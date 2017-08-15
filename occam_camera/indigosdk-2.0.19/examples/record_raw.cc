/*
  Copyright 2011 - 2017 Occam Robotics Inc - All rights reserved.

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are met:
  * Redistributions of source code must retain the above copyright
  notice, this list of conditions and the following disclaimer.
  * Redistributions in binary form must reproduce the above copyright
  notice, this list of conditions and the following disclaimer in the
  documentation and/or other materials provided with the distribution.
  * Neither the name of Occam Vision Group, Occam Robotics Inc, nor the
  names of its contributors may be used to endorse or promote products
  derived from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  DISCLAIMED. IN NO EVENT SHALL OCCAM ROBOTICS INC BE LIABLE FOR ANY
  DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

// Opens the first device available and writes each frame's OCCAM_RAW_IMAGE* to bmp files
// in the directory, along with a file device_info that has various device parameters.
// After running this program to capture a sequence of unprocessed frames, run process_raw
// generate color-processed and stitched images.

#include "indigo.h"
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <time.h>
#include <iostream>
#include <fstream>
#include <iomanip>
#include <string>
#include <pthread.h>
# include <io.h>
# include <fcntl.h>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>


static void reportError(int error_code) {
  char str[1024] = {0};
  occamGetErrorString((OccamError)error_code, str, sizeof(str));
  std::cerr<<"Occam API Error: "<<str<<" ("<<error_code<<")"<<std::endl;
  abort();
}

#define OCCAM_CHECK(call) {int r = (call);if (r != OCCAM_API_SUCCESS) reportError(r);}

// Write device parameters to a file named "device_info" in the current directory
// This file is read by process_raw to perform color processing and stitching.
bool saveDeviceInfo(OccamDevice* device) {
  std::ofstream fout("device_info");
  if (!fout.is_open()) {
    std::cerr<<"failed to open device_info file"<<std::endl;
    return false;
  }

  char* model = 0;
  char* serial = 0;
  int is_color = 0;
  int sensor_count = 0;
  int sensor_width = 0;
  int sensor_height = 0;
  int image_processing_enabled = 0;
  int brightness = 0;
  int gamma = 0;
  int black_level = 0;
  int white_balance_red = 0;
  int white_balance_green = 0;
  int white_balance_blue = 0;
  int stitching_radius = 0;
  int stitching_rotation = 0;
  int stitching_scalewidth = 0;
  int stitching_crop = 0;
  OCCAM_CHECK(occamGetDeviceValues(device, OCCAM_MODEL, &model));
  OCCAM_CHECK(occamGetDeviceValues(device, OCCAM_SERIAL, &serial));
  OCCAM_CHECK(occamGetDeviceValuei(device, OCCAM_COLOR, &is_color));
  OCCAM_CHECK(occamGetDeviceValuei(device, OCCAM_SENSOR_COUNT, &sensor_count));
  OCCAM_CHECK(occamGetDeviceValuei(device, OCCAM_SENSOR_WIDTH, &sensor_width));
  OCCAM_CHECK(occamGetDeviceValuei(device, OCCAM_SENSOR_HEIGHT, &sensor_height));
  OCCAM_CHECK(occamGetDeviceValuei(device, OCCAM_IMAGE_PROCESSING_ENABLED, &image_processing_enabled));
  OCCAM_CHECK(occamGetDeviceValuei(device, OCCAM_BRIGHTNESS, &brightness));
  OCCAM_CHECK(occamGetDeviceValuei(device, OCCAM_GAMMA, &gamma));
  OCCAM_CHECK(occamGetDeviceValuei(device, OCCAM_BLACK_LEVEL, &black_level));
  if (is_color) {
    OCCAM_CHECK(occamGetDeviceValuei(device, OCCAM_WHITE_BALANCE_RED, &white_balance_red));
    OCCAM_CHECK(occamGetDeviceValuei(device, OCCAM_WHITE_BALANCE_GREEN, &white_balance_green));
    OCCAM_CHECK(occamGetDeviceValuei(device, OCCAM_WHITE_BALANCE_BLUE, &white_balance_blue));
  }
  OCCAM_CHECK(occamGetDeviceValuei(device, OCCAM_STITCHING_RADIUS, &stitching_radius));
  OCCAM_CHECK(occamGetDeviceValuei(device, OCCAM_STITCHING_ROTATION, &stitching_rotation));
  OCCAM_CHECK(occamGetDeviceValuei(device, OCCAM_STITCHING_SCALEWIDTH, &stitching_scalewidth));
  OCCAM_CHECK(occamGetDeviceValuei(device, OCCAM_STITCHING_CROP, &stitching_crop));

  fout<<model<<" "<<serial<<std::endl;
  fout<<is_color<<" ";
  fout<<sensor_count<<" ";
  fout<<sensor_width<<" ";
  fout<<sensor_height<<" ";
  fout<<image_processing_enabled<<" ";
  fout<<brightness<<" ";
  fout<<gamma<<" ";
  fout<<black_level<<" ";
  fout<<white_balance_red<<" ";
  fout<<white_balance_green<<" ";
  fout<<white_balance_blue<<" ";
  fout<<stitching_radius<<" ";
  fout<<stitching_rotation<<" ";
  fout<<stitching_scalewidth<<" ";
  fout<<stitching_crop;
  fout<<std::endl;
  fout<<std::endl;

  occamFree(model);
  occamFree(serial);

  for (int j=0;j<sensor_count;++j) {
    double D[5], K[9], R[9], T[3];

    OCCAM_CHECK(occamGetDeviceValuerv(device, OccamParam(OCCAM_SENSOR_DISTORTION_COEFS0+j), D, 5));
    OCCAM_CHECK(occamGetDeviceValuerv(device, OccamParam(OCCAM_SENSOR_INTRINSICS0+j), K, 9));
    OCCAM_CHECK(occamGetDeviceValuerv(device, OccamParam(OCCAM_SENSOR_ROTATION0+j), R, 9));
    OCCAM_CHECK(occamGetDeviceValuerv(device, OccamParam(OCCAM_SENSOR_TRANSLATION0+j), T, 3));

    for (int k=0;k<5;++k)
      fout<<(k?" ":"")<<D[k];
    fout<<std::endl;
    for (int k=0;k<9;++k)
      fout<<(k?" ":"")<<K[k];
    fout<<std::endl;
    for (int k=0;k<9;++k)
      fout<<(k?" ":"")<<R[k];
    fout<<std::endl;
    for (int k=0;k<3;++k)
      fout<<(k?" ":"")<<T[k];
    fout<<std::endl;
    fout<<std::endl;
  }

  return true;
}

int main(int argc, const char** argv) {
  OccamDevice* device;
  OccamImage* image;

  int i, r, frame_count = 0;
  int dev_index = argc>=2?atoi(argv[1]):0;
  OccamDeviceList* device_list;
  std::string str;
            
  OCCAM_CHECK(occamInitialize());

  OCCAM_CHECK(occamEnumerateDeviceList(2000, &device_list));
  std::cerr<<device_list->entry_count<<" devices found"<<std::endl;
  for (i=0;i<device_list->entry_count;++i) {
    std::cerr<<"device["<<i<<"]: cid = "<<device_list->entries[i].cid<<std::endl;
  }
  if (dev_index<0 || dev_index >= device_list->entry_count) {
    std::cerr<<"device index "<<dev_index<<" out of range"<<std::endl;
    return 1;
  }

  OCCAM_CHECK(occamOpenDevice(device_list->entries[dev_index].cid, &device));

/*
  if (!saveDeviceInfo(device))
    return 1;
*/

  OccamDataName req[] = {OCCAM_STITCHED_IMAGE0};

  std::vector<int> params;
  params.push_back(cv::IMWRITE_PNG_COMPRESSION);
  params.push_back(2);

  // set read image fps
  occamSetDeviceValuei(device,OCCAM_TARGET_FPS,60);
  int target_fps = 0;
  occamGetDeviceValuei(device,OCCAM_TARGET_FPS,&target_fps);
  printf("device fps = %i\n",target_fps);

  occamSetDeviceValuei(device,OCCAM_MAX_DEFERRED_REAPING_FRAMES,3);
  occamSetDeviceValuei(device,OCCAM_MAX_DEFERRED_PENDING_FRAMES,3);

  cv::Mat img;
  std::vector<uchar> buffer;
  uchar* p;
  
  setmode(fileno(stdout), O_BINARY);

  while(1){
    if ((r = occamDeviceReadData(device, 1, req, 0, (void**)&image, 1)) != OCCAM_API_SUCCESS){
      reportError(r);
      continue;
    }

    img = cv::Mat_<cv::Vec3b>(image->height,image->width,(cv::Vec3b*)image->data[0],image->step[0]);
    cv::cvtColor(img, img, cv::COLOR_RGB2BGR);

    cv::imencode(".jpg",img,buffer,params);
    p = &buffer[0];
    write(fileno(stdout),p,buffer.size());

    //std::cerr<<"Captured frame: "<<frame_count<<std::endl;
    //frame_count++;

    occamFreeImage(image);
  }

  occamCloseDevice(device);
  occamFreeDeviceList(device_list);
  occamShutdown();

  return 0;
}

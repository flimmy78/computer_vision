#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <time.h>
#include <iostream>
#include <string>

int main(int argc, const char** argv) {
  int v = 0;
  std::string str;
  if (argc > 1){
    std::string camera_ip(argv[1]);
    if (argc > 2){
      std::string verbal(argv[2]);
      if (verbal == "v"){
        v = 1;
      }
    }
    if (v){
      str = "./ffmpeg -rtsp_transport tcp -i rtsp://" + camera_ip + ":554/live2.sdp -f flv rtmp://127.0.0.1/camera_ptz/mystream";
    }
    else{
      str = "./ffmpeg -loglevel error -rtsp_transport tcp -i rtsp://" + camera_ip + ":554/live2.sdp -f flv rtmp://127.0.0.1/camera_ptz/mystream";
    }
    system(str.c_str());
  }
  else{
    std::cout << "Please specify ptz camera IP" << std::endl; 
  }
  return 0;
}
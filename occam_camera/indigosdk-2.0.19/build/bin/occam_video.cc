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
    std::string verbal(argv[1]);
    if (verbal == "v"){
      v = 1;
    }
  }
  if (v){
    str = "./record_raw.exe | ./ffmpeg -re -r 15 -vcodec mjpeg -f image2pipe -i - -f flv rtmp://127.0.0.1/myapp/mystream";
  }
  else{
    str = "./record_raw.exe | ./ffmpeg -loglevel error -re -r 15 -vcodec mjpeg -f image2pipe -i - -f flv rtmp://127.0.0.1/myapp/mystream";
  }
  system(str.c_str());
  return 0;
}

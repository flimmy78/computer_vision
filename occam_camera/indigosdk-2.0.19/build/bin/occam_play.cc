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
    std::string ip(argv[1]);
    if (argc > 2){
      std::string verbal(argv[2]);
      if (verbal == "v"){
        v = 1;
      }
    }
    if (v){
      str = "./ffplay -fflags nobuffer rtmp://" + ip + "/myapp/mystream";
    }
    else{
      str = "./ffplay -loglevel error -fflags nobuffer rtmp://" + ip + "/myapp/mystream";
    }
    system(str.c_str());
  }
  else{
    std::cout << "Please specify server IP" << std::endl; 
  }
  return 0;
}

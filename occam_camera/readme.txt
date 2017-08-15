(optional)
free video effect plugins:
git clone https://github.com/dyne/frei0r
cmake .
make
make install

------------------------------------------------------------------

(compile ok but not working properly somehow with current cygwin)
ffmpeg:
./configure
make -j4
make install

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

------------------------------------------------------------------

ffmpeg loglevel:
const struct { const char *name; int level; } log_levels[] = {
        { "quiet"  , AV_LOG_QUIET   },
        { "panic"  , AV_LOG_PANIC   },
        { "fatal"  , AV_LOG_FATAL   },
        { "error"  , AV_LOG_ERROR   },
        { "warning", AV_LOG_WARNING },
        { "info"   , AV_LOG_INFO    },
        { "verbose", AV_LOG_VERBOSE },
        { "debug"  , AV_LOG_DEBUG   },
    };

------------------------------------------------------------------

OpenCV:
cd <opencv directory>
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local ..
(maybe) cmake -DCMAKE_BUILD_TYPE=Release ..
make -j4
make install

------------------------------------------------------------------


SDK:
== Ubuntu compilation

## build with OpenCV support
cd <base SDK directory>
mkdir build
cd build
rm -f CMakeCache.txt && cmake -DOpenCV_DIR=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13 -DUSE_OPENCV=1 ..
cmake --build . --config Release


## build with no OpenCV support
cd <base SDK directory>
mkdir build
cd build
rm -f CMakeCache.txt && cmake -DUSE_OPENCV=0 ..
cmake --build . --config Release

Use -DOCCAM_SSE2=OFF to build for ARM or other non-X86 platforms that don't have SSE support.

------------------------------------------------------------------

1. in "indigo.h" add
#ifdef __cplusplus
#include <cmath>
#else
#include <math.h>
#endif

2. calibfilter.cpp & epilines.cpp
comment "#undef quad"

3. examples/offline_stitch.c 
comment "#include <opencv2/imgcodecs/imgcodecs.hpp>"

4. for libusb open device uner windows,
use zadig, install (replace) libusb-win32 driver
current camera model is "OMNI5U3MT9V022"

5. imgseq_video.cc
comment "#include <opencv2/imgcodecs/imgcodecs.hpp>"
comment "#include <opencv2/videoio/videoio.hpp>"

------------------------------------------------------------------

zadig uninstall:
Detaching MS Windows libusb driver
Filed under: Uncategorized — Tags: detach, device, driver, ftd2xx, ftdi, inf, libusb, msw, remove, usb, windows, zadig — admin @ 2013-02-20 10:20
It was easy to assign a FTDI device VID/PID to a libusb backend with Zadig. But detaching it from the libusb and assigning the original FTD2XX driver wasn’t so easy. Simple “remove device” in the Device Manager is not sufficient. When you plug back the device it will be assigned to the libusb again.
Following steps worked:
Disconnect the device.
Run cmd.exe and type in to open devices management:
set devmgr_show_nonpresent_devices=1
devmgmt
In menu click – View – Show hidden devices.
Right click on your device and click Uninstall.
Go to a hidden directory c:\windows\inf and delete those oem*.inf files which contains a reference to your device.
Remove original libusb driver/zadig directory because Windows might look for all known places to find a device driver.
Reboot.
Connect – MSW should ask you for drivers for a new device.

------------------------------------------------------------------

g++ occam_video.cc -o occam_video.exe

------------------------------------------------------------------

ffmpeg -re -loop 1 -i "%05d.png" -r 1 -vcodec mpeg4 -f mpegts udp://127.0.0.1:1234
(ffmpeg -re -i %d.bmp -r 10 -c:v libx264 -preset ultrafast -crf 21 output.mp4)

ffmpeg -loop_input -re -f image2 -r 2 -sameq -i input.jpg -an -vcodec mpeg2video out.mp4
ffmpeg -loop_input -re -f image2 -r 2 -sameq -i input.jpg -an -f mpegts udp://127.0.0.1:1234

ffplay -f mpegts udp://127.0.0.1:1234

ffplay output.mp4

------------------------------------------------------------------

(real application)

./record_raw.exe | ./ffmpeg -re -r 15 -vcodec mjpeg -f image2pipe -i - -f flv rtmp://192.168.20.46/myapp/mystream
ffplay -fflags nobuffer rtmp://192.168.20.46/myapp/mystream
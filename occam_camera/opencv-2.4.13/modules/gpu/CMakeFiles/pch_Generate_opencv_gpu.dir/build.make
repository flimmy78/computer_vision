# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake.exe

# The command to remove a file.
RM = /usr/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13

# Utility rule file for pch_Generate_opencv_gpu.

# Include the progress variables for this target.
include modules/gpu/CMakeFiles/pch_Generate_opencv_gpu.dir/progress.make

modules/gpu/CMakeFiles/pch_Generate_opencv_gpu: modules/gpu/precomp.hpp.gch/opencv_gpu_Release.gch


modules/gpu/precomp.hpp.gch/opencv_gpu_Release.gch: modules/gpu/src/precomp.hpp
modules/gpu/precomp.hpp.gch/opencv_gpu_Release.gch: modules/gpu/precomp.hpp
modules/gpu/precomp.hpp.gch/opencv_gpu_Release.gch: lib/libopencv_gpu_pch_dephelp.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating precomp.hpp.gch/opencv_gpu_Release.gch"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu && /usr/bin/cmake.exe -E make_directory /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu/precomp.hpp.gch
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu && /usr/bin/c++.exe -O3 -DNDEBUG -DNDEBUG -fPIC -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu/src/cuda" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/photo/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/objdetect/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/legacy/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/video/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ml/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/calib3d/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/features2d/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/highgui/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/imgproc/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/flann/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/core/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu/src" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu/include" -isystem"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13" -isystem"/usr/include/eigen3" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu/src/cuda" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/photo/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/objdetect/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/legacy/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/video/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ml/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/calib3d/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/features2d/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/highgui/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/imgproc/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/flann/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/core/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu/src" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu/include" -isystem"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13" -isystem"/usr/include/eigen3" -fsigned-char -W -Wall -Werror=return-type -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-array-bounds -Wno-aggressive-loop-optimizations -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -msse -msse2 -msse3 -ffunction-sections -DCVAPI_EXPORTS -x c++-header -o /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu/precomp.hpp.gch/opencv_gpu_Release.gch /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu/precomp.hpp

modules/gpu/precomp.hpp: modules/gpu/src/precomp.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating precomp.hpp"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu && /usr/bin/cmake.exe -E copy_if_different /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu/src/precomp.hpp /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu/precomp.hpp

pch_Generate_opencv_gpu: modules/gpu/CMakeFiles/pch_Generate_opencv_gpu
pch_Generate_opencv_gpu: modules/gpu/precomp.hpp.gch/opencv_gpu_Release.gch
pch_Generate_opencv_gpu: modules/gpu/precomp.hpp
pch_Generate_opencv_gpu: modules/gpu/CMakeFiles/pch_Generate_opencv_gpu.dir/build.make

.PHONY : pch_Generate_opencv_gpu

# Rule to build all files generated by this target.
modules/gpu/CMakeFiles/pch_Generate_opencv_gpu.dir/build: pch_Generate_opencv_gpu

.PHONY : modules/gpu/CMakeFiles/pch_Generate_opencv_gpu.dir/build

modules/gpu/CMakeFiles/pch_Generate_opencv_gpu.dir/clean:
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_gpu.dir/cmake_clean.cmake
.PHONY : modules/gpu/CMakeFiles/pch_Generate_opencv_gpu.dir/clean

modules/gpu/CMakeFiles/pch_Generate_opencv_gpu.dir/depend:
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13 /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13 /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/gpu/CMakeFiles/pch_Generate_opencv_gpu.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/gpu/CMakeFiles/pch_Generate_opencv_gpu.dir/depend


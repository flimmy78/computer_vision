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

# Utility rule file for pch_Generate_opencv_ocl.

# Include the progress variables for this target.
include modules/ocl/CMakeFiles/pch_Generate_opencv_ocl.dir/progress.make

modules/ocl/CMakeFiles/pch_Generate_opencv_ocl: modules/ocl/precomp.hpp.gch/opencv_ocl_Release.gch


modules/ocl/precomp.hpp.gch/opencv_ocl_Release.gch: modules/ocl/src/precomp.hpp
modules/ocl/precomp.hpp.gch/opencv_ocl_Release.gch: modules/ocl/precomp.hpp
modules/ocl/precomp.hpp.gch/opencv_ocl_Release.gch: lib/libopencv_ocl_pch_dephelp.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating precomp.hpp.gch/opencv_ocl_Release.gch"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ocl && /usr/bin/cmake.exe -E make_directory /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ocl/precomp.hpp.gch
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ocl && /usr/bin/c++.exe -O3 -DNDEBUG -DNDEBUG -fPIC -isystem"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/3rdparty/include/opencl/1.2" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/video/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/objdetect/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ml/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/calib3d/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/features2d/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/highgui/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/imgproc/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/flann/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/core/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ocl" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ocl/src" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ocl/include" -isystem"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13" -isystem"/usr/include/eigen3" -isystem"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/3rdparty/include/opencl/1.2" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/video/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/objdetect/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ml/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/calib3d/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/features2d/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/highgui/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/imgproc/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/flann/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/core/include" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ocl" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ocl/src" -I"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ocl/include" -isystem"/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13" -isystem"/usr/include/eigen3" -fsigned-char -W -Wall -Werror=return-type -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-array-bounds -Wno-aggressive-loop-optimizations -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -msse -msse2 -msse3 -ffunction-sections -DCVAPI_EXPORTS -x c++-header -o /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ocl/precomp.hpp.gch/opencv_ocl_Release.gch /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ocl/precomp.hpp

modules/ocl/precomp.hpp: modules/ocl/src/precomp.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating precomp.hpp"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ocl && /usr/bin/cmake.exe -E copy_if_different /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ocl/src/precomp.hpp /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ocl/precomp.hpp

pch_Generate_opencv_ocl: modules/ocl/CMakeFiles/pch_Generate_opencv_ocl
pch_Generate_opencv_ocl: modules/ocl/precomp.hpp.gch/opencv_ocl_Release.gch
pch_Generate_opencv_ocl: modules/ocl/precomp.hpp
pch_Generate_opencv_ocl: modules/ocl/CMakeFiles/pch_Generate_opencv_ocl.dir/build.make

.PHONY : pch_Generate_opencv_ocl

# Rule to build all files generated by this target.
modules/ocl/CMakeFiles/pch_Generate_opencv_ocl.dir/build: pch_Generate_opencv_ocl

.PHONY : modules/ocl/CMakeFiles/pch_Generate_opencv_ocl.dir/build

modules/ocl/CMakeFiles/pch_Generate_opencv_ocl.dir/clean:
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ocl && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_ocl.dir/cmake_clean.cmake
.PHONY : modules/ocl/CMakeFiles/pch_Generate_opencv_ocl.dir/clean

modules/ocl/CMakeFiles/pch_Generate_opencv_ocl.dir/depend:
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13 /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ocl /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13 /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ocl /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/ocl/CMakeFiles/pch_Generate_opencv_ocl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/ocl/CMakeFiles/pch_Generate_opencv_ocl.dir/depend


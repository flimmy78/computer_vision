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

# Include any dependencies generated for this target.
include modules/contrib/CMakeFiles/opencv_test_contrib.dir/depend.make

# Include the progress variables for this target.
include modules/contrib/CMakeFiles/opencv_test_contrib.dir/progress.make

# Include the compile flags for this target's objects.
include modules/contrib/CMakeFiles/opencv_test_contrib.dir/flags.make

modules/contrib/CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.o: modules/contrib/CMakeFiles/opencv_test_contrib.dir/flags.make
modules/contrib/CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.o: modules/contrib/test/test_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/contrib/CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.o"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/contrib && /usr/bin/c++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -o CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.o -c /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/contrib/test/test_main.cpp

modules/contrib/CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.i"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/contrib && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -E /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/contrib/test/test_main.cpp > CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.i

modules/contrib/CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.s"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/contrib && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -S /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/contrib/test/test_main.cpp -o CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.s

modules/contrib/CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.o.requires:

.PHONY : modules/contrib/CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.o.requires

modules/contrib/CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.o.provides: modules/contrib/CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.o.requires
	$(MAKE) -f modules/contrib/CMakeFiles/opencv_test_contrib.dir/build.make modules/contrib/CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.o.provides.build
.PHONY : modules/contrib/CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.o.provides

modules/contrib/CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.o.provides.build: modules/contrib/CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.o


# Object files for target opencv_test_contrib
opencv_test_contrib_OBJECTS = \
"CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.o"

# External object files for target opencv_test_contrib
opencv_test_contrib_EXTERNAL_OBJECTS =

bin/opencv_test_contrib.exe: modules/contrib/CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.o
bin/opencv_test_contrib.exe: modules/contrib/CMakeFiles/opencv_test_contrib.dir/build.make
bin/opencv_test_contrib.exe: lib/libopencv_contrib.dll.a
bin/opencv_test_contrib.exe: lib/libopencv_ts.a
bin/opencv_test_contrib.exe: lib/libopencv_nonfree.dll.a
bin/opencv_test_contrib.exe: lib/libopencv_gpu.dll.a
bin/opencv_test_contrib.exe: lib/libopencv_legacy.dll.a
bin/opencv_test_contrib.exe: lib/libopencv_photo.dll.a
bin/opencv_test_contrib.exe: lib/libopencv_ocl.dll.a
bin/opencv_test_contrib.exe: lib/libopencv_ml.dll.a
bin/opencv_test_contrib.exe: lib/libopencv_objdetect.dll.a
bin/opencv_test_contrib.exe: lib/libopencv_calib3d.dll.a
bin/opencv_test_contrib.exe: lib/libopencv_features2d.dll.a
bin/opencv_test_contrib.exe: lib/libopencv_flann.dll.a
bin/opencv_test_contrib.exe: lib/libopencv_highgui.dll.a
bin/opencv_test_contrib.exe: lib/libopencv_video.dll.a
bin/opencv_test_contrib.exe: lib/libopencv_imgproc.dll.a
bin/opencv_test_contrib.exe: lib/libopencv_core.dll.a
bin/opencv_test_contrib.exe: modules/contrib/CMakeFiles/opencv_test_contrib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/opencv_test_contrib.exe"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/contrib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_test_contrib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/contrib/CMakeFiles/opencv_test_contrib.dir/build: bin/opencv_test_contrib.exe

.PHONY : modules/contrib/CMakeFiles/opencv_test_contrib.dir/build

modules/contrib/CMakeFiles/opencv_test_contrib.dir/requires: modules/contrib/CMakeFiles/opencv_test_contrib.dir/test/test_main.cpp.o.requires

.PHONY : modules/contrib/CMakeFiles/opencv_test_contrib.dir/requires

modules/contrib/CMakeFiles/opencv_test_contrib.dir/clean:
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/contrib && $(CMAKE_COMMAND) -P CMakeFiles/opencv_test_contrib.dir/cmake_clean.cmake
.PHONY : modules/contrib/CMakeFiles/opencv_test_contrib.dir/clean

modules/contrib/CMakeFiles/opencv_test_contrib.dir/depend:
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13 /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/contrib /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13 /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/contrib /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/modules/contrib/CMakeFiles/opencv_test_contrib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/contrib/CMakeFiles/opencv_test_contrib.dir/depend

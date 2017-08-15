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
include apps/haartraining/CMakeFiles/opencv_performance.dir/depend.make

# Include the progress variables for this target.
include apps/haartraining/CMakeFiles/opencv_performance.dir/progress.make

# Include the compile flags for this target's objects.
include apps/haartraining/CMakeFiles/opencv_performance.dir/flags.make

apps/haartraining/CMakeFiles/opencv_performance.dir/performance.cpp.o: apps/haartraining/CMakeFiles/opencv_performance.dir/flags.make
apps/haartraining/CMakeFiles/opencv_performance.dir/performance.cpp.o: apps/haartraining/performance.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/haartraining/CMakeFiles/opencv_performance.dir/performance.cpp.o"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/haartraining && /usr/bin/c++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_performance.dir/performance.cpp.o -c /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/haartraining/performance.cpp

apps/haartraining/CMakeFiles/opencv_performance.dir/performance.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_performance.dir/performance.cpp.i"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/haartraining && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/haartraining/performance.cpp > CMakeFiles/opencv_performance.dir/performance.cpp.i

apps/haartraining/CMakeFiles/opencv_performance.dir/performance.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_performance.dir/performance.cpp.s"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/haartraining && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/haartraining/performance.cpp -o CMakeFiles/opencv_performance.dir/performance.cpp.s

apps/haartraining/CMakeFiles/opencv_performance.dir/performance.cpp.o.requires:

.PHONY : apps/haartraining/CMakeFiles/opencv_performance.dir/performance.cpp.o.requires

apps/haartraining/CMakeFiles/opencv_performance.dir/performance.cpp.o.provides: apps/haartraining/CMakeFiles/opencv_performance.dir/performance.cpp.o.requires
	$(MAKE) -f apps/haartraining/CMakeFiles/opencv_performance.dir/build.make apps/haartraining/CMakeFiles/opencv_performance.dir/performance.cpp.o.provides.build
.PHONY : apps/haartraining/CMakeFiles/opencv_performance.dir/performance.cpp.o.provides

apps/haartraining/CMakeFiles/opencv_performance.dir/performance.cpp.o.provides.build: apps/haartraining/CMakeFiles/opencv_performance.dir/performance.cpp.o


# Object files for target opencv_performance
opencv_performance_OBJECTS = \
"CMakeFiles/opencv_performance.dir/performance.cpp.o"

# External object files for target opencv_performance
opencv_performance_EXTERNAL_OBJECTS =

bin/opencv_performance.exe: apps/haartraining/CMakeFiles/opencv_performance.dir/performance.cpp.o
bin/opencv_performance.exe: apps/haartraining/CMakeFiles/opencv_performance.dir/build.make
bin/opencv_performance.exe: lib/libopencv_haartraining_engine.a
bin/opencv_performance.exe: lib/libopencv_objdetect.dll.a
bin/opencv_performance.exe: lib/libopencv_legacy.dll.a
bin/opencv_performance.exe: lib/libopencv_calib3d.dll.a
bin/opencv_performance.exe: lib/libopencv_video.dll.a
bin/opencv_performance.exe: lib/libopencv_features2d.dll.a
bin/opencv_performance.exe: lib/libopencv_highgui.dll.a
bin/opencv_performance.exe: lib/libopencv_imgproc.dll.a
bin/opencv_performance.exe: lib/libopencv_flann.dll.a
bin/opencv_performance.exe: lib/libopencv_ml.dll.a
bin/opencv_performance.exe: lib/libopencv_core.dll.a
bin/opencv_performance.exe: apps/haartraining/CMakeFiles/opencv_performance.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/opencv_performance.exe"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/haartraining && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_performance.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/haartraining/CMakeFiles/opencv_performance.dir/build: bin/opencv_performance.exe

.PHONY : apps/haartraining/CMakeFiles/opencv_performance.dir/build

apps/haartraining/CMakeFiles/opencv_performance.dir/requires: apps/haartraining/CMakeFiles/opencv_performance.dir/performance.cpp.o.requires

.PHONY : apps/haartraining/CMakeFiles/opencv_performance.dir/requires

apps/haartraining/CMakeFiles/opencv_performance.dir/clean:
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/haartraining && $(CMAKE_COMMAND) -P CMakeFiles/opencv_performance.dir/cmake_clean.cmake
.PHONY : apps/haartraining/CMakeFiles/opencv_performance.dir/clean

apps/haartraining/CMakeFiles/opencv_performance.dir/depend:
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13 /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/haartraining /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13 /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/haartraining /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/haartraining/CMakeFiles/opencv_performance.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/haartraining/CMakeFiles/opencv_performance.dir/depend


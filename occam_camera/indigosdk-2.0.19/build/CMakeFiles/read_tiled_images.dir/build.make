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
CMAKE_SOURCE_DIR = /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19/build

# Include any dependencies generated for this target.
include CMakeFiles/read_tiled_images.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/read_tiled_images.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/read_tiled_images.dir/flags.make

CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.o: CMakeFiles/read_tiled_images.dir/flags.make
CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.o: ../examples/read_tiled_images.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.o   -c /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19/examples/read_tiled_images.c

CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19/examples/read_tiled_images.c > CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.i

CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19/examples/read_tiled_images.c -o CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.s

CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.o.requires:

.PHONY : CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.o.requires

CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.o.provides: CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.o.requires
	$(MAKE) -f CMakeFiles/read_tiled_images.dir/build.make CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.o.provides.build
.PHONY : CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.o.provides

CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.o.provides.build: CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.o


# Object files for target read_tiled_images
read_tiled_images_OBJECTS = \
"CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.o"

# External object files for target read_tiled_images
read_tiled_images_EXTERNAL_OBJECTS =

bin/read_tiled_images.exe: CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.o
bin/read_tiled_images.exe: CMakeFiles/read_tiled_images.dir/build.make
bin/read_tiled_images.exe: bin/libindigo.dll.a
bin/read_tiled_images.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_videostab.dll.a
bin/read_tiled_images.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_ts.a
bin/read_tiled_images.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_superres.dll.a
bin/read_tiled_images.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_stitching.dll.a
bin/read_tiled_images.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_contrib.dll.a
bin/read_tiled_images.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_nonfree.dll.a
bin/read_tiled_images.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_ocl.dll.a
bin/read_tiled_images.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_gpu.dll.a
bin/read_tiled_images.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_photo.dll.a
bin/read_tiled_images.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_objdetect.dll.a
bin/read_tiled_images.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_legacy.dll.a
bin/read_tiled_images.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_video.dll.a
bin/read_tiled_images.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_ml.dll.a
bin/read_tiled_images.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_calib3d.dll.a
bin/read_tiled_images.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_features2d.dll.a
bin/read_tiled_images.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_highgui.dll.a
bin/read_tiled_images.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_imgproc.dll.a
bin/read_tiled_images.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_flann.dll.a
bin/read_tiled_images.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_core.dll.a
bin/read_tiled_images.exe: CMakeFiles/read_tiled_images.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/read_tiled_images.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/read_tiled_images.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/read_tiled_images.dir/build: bin/read_tiled_images.exe

.PHONY : CMakeFiles/read_tiled_images.dir/build

CMakeFiles/read_tiled_images.dir/requires: CMakeFiles/read_tiled_images.dir/examples/read_tiled_images.c.o.requires

.PHONY : CMakeFiles/read_tiled_images.dir/requires

CMakeFiles/read_tiled_images.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/read_tiled_images.dir/cmake_clean.cmake
.PHONY : CMakeFiles/read_tiled_images.dir/clean

CMakeFiles/read_tiled_images.dir/depend:
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19 /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19 /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19/build /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19/build /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19/build/CMakeFiles/read_tiled_images.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/read_tiled_images.dir/depend


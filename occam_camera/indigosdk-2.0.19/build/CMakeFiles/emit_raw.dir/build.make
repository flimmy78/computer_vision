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
include CMakeFiles/emit_raw.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/emit_raw.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/emit_raw.dir/flags.make

CMakeFiles/emit_raw.dir/examples/emit_raw.c.o: CMakeFiles/emit_raw.dir/flags.make
CMakeFiles/emit_raw.dir/examples/emit_raw.c.o: ../examples/emit_raw.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/emit_raw.dir/examples/emit_raw.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/emit_raw.dir/examples/emit_raw.c.o   -c /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19/examples/emit_raw.c

CMakeFiles/emit_raw.dir/examples/emit_raw.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emit_raw.dir/examples/emit_raw.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19/examples/emit_raw.c > CMakeFiles/emit_raw.dir/examples/emit_raw.c.i

CMakeFiles/emit_raw.dir/examples/emit_raw.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emit_raw.dir/examples/emit_raw.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19/examples/emit_raw.c -o CMakeFiles/emit_raw.dir/examples/emit_raw.c.s

CMakeFiles/emit_raw.dir/examples/emit_raw.c.o.requires:

.PHONY : CMakeFiles/emit_raw.dir/examples/emit_raw.c.o.requires

CMakeFiles/emit_raw.dir/examples/emit_raw.c.o.provides: CMakeFiles/emit_raw.dir/examples/emit_raw.c.o.requires
	$(MAKE) -f CMakeFiles/emit_raw.dir/build.make CMakeFiles/emit_raw.dir/examples/emit_raw.c.o.provides.build
.PHONY : CMakeFiles/emit_raw.dir/examples/emit_raw.c.o.provides

CMakeFiles/emit_raw.dir/examples/emit_raw.c.o.provides.build: CMakeFiles/emit_raw.dir/examples/emit_raw.c.o


# Object files for target emit_raw
emit_raw_OBJECTS = \
"CMakeFiles/emit_raw.dir/examples/emit_raw.c.o"

# External object files for target emit_raw
emit_raw_EXTERNAL_OBJECTS =

bin/emit_raw.exe: CMakeFiles/emit_raw.dir/examples/emit_raw.c.o
bin/emit_raw.exe: CMakeFiles/emit_raw.dir/build.make
bin/emit_raw.exe: bin/libindigo.dll.a
bin/emit_raw.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_videostab.dll.a
bin/emit_raw.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_ts.a
bin/emit_raw.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_superres.dll.a
bin/emit_raw.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_stitching.dll.a
bin/emit_raw.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_contrib.dll.a
bin/emit_raw.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_nonfree.dll.a
bin/emit_raw.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_ocl.dll.a
bin/emit_raw.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_gpu.dll.a
bin/emit_raw.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_photo.dll.a
bin/emit_raw.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_objdetect.dll.a
bin/emit_raw.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_legacy.dll.a
bin/emit_raw.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_video.dll.a
bin/emit_raw.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_ml.dll.a
bin/emit_raw.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_calib3d.dll.a
bin/emit_raw.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_features2d.dll.a
bin/emit_raw.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_highgui.dll.a
bin/emit_raw.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_imgproc.dll.a
bin/emit_raw.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_flann.dll.a
bin/emit_raw.exe: /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/lib/libopencv_core.dll.a
bin/emit_raw.exe: CMakeFiles/emit_raw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/emit_raw.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/emit_raw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/emit_raw.dir/build: bin/emit_raw.exe

.PHONY : CMakeFiles/emit_raw.dir/build

CMakeFiles/emit_raw.dir/requires: CMakeFiles/emit_raw.dir/examples/emit_raw.c.o.requires

.PHONY : CMakeFiles/emit_raw.dir/requires

CMakeFiles/emit_raw.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/emit_raw.dir/cmake_clean.cmake
.PHONY : CMakeFiles/emit_raw.dir/clean

CMakeFiles/emit_raw.dir/depend:
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19 /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19 /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19/build /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19/build /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/indigosdk-2.0.19/build/CMakeFiles/emit_raw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/emit_raw.dir/depend


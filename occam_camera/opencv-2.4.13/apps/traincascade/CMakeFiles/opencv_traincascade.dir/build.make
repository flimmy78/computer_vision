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
include apps/traincascade/CMakeFiles/opencv_traincascade.dir/depend.make

# Include the progress variables for this target.
include apps/traincascade/CMakeFiles/opencv_traincascade.dir/progress.make

# Include the compile flags for this target's objects.
include apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make

apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o: apps/traincascade/traincascade.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o -c /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/traincascade.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/traincascade.cpp.i"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/traincascade.cpp > CMakeFiles/opencv_traincascade.dir/traincascade.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/traincascade.cpp.s"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/traincascade.cpp -o CMakeFiles/opencv_traincascade.dir/traincascade.cpp.s

apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o.requires:

.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o.requires

apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o.provides: apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o.requires
	$(MAKE) -f apps/traincascade/CMakeFiles/opencv_traincascade.dir/build.make apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o.provides.build
.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o.provides

apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o.provides.build: apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o


apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o: apps/traincascade/cascadeclassifier.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o -c /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/cascadeclassifier.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.i"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/cascadeclassifier.cpp > CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.s"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/cascadeclassifier.cpp -o CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.s

apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o.requires:

.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o.requires

apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o.provides: apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o.requires
	$(MAKE) -f apps/traincascade/CMakeFiles/opencv_traincascade.dir/build.make apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o.provides.build
.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o.provides

apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o.provides.build: apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o


apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.o: apps/traincascade/boost.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.o"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/boost.cpp.o -c /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/boost.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/boost.cpp.i"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/boost.cpp > CMakeFiles/opencv_traincascade.dir/boost.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/boost.cpp.s"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/boost.cpp -o CMakeFiles/opencv_traincascade.dir/boost.cpp.s

apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.o.requires:

.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.o.requires

apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.o.provides: apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.o.requires
	$(MAKE) -f apps/traincascade/CMakeFiles/opencv_traincascade.dir/build.make apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.o.provides.build
.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.o.provides

apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.o.provides.build: apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.o


apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.o: apps/traincascade/features.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.o"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/features.cpp.o -c /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/features.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/features.cpp.i"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/features.cpp > CMakeFiles/opencv_traincascade.dir/features.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/features.cpp.s"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/features.cpp -o CMakeFiles/opencv_traincascade.dir/features.cpp.s

apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.o.requires:

.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.o.requires

apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.o.provides: apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.o.requires
	$(MAKE) -f apps/traincascade/CMakeFiles/opencv_traincascade.dir/build.make apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.o.provides.build
.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.o.provides

apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.o.provides.build: apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.o


apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o: apps/traincascade/haarfeatures.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o -c /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/haarfeatures.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.i"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/haarfeatures.cpp > CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.s"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/haarfeatures.cpp -o CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.s

apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o.requires:

.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o.requires

apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o.provides: apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o.requires
	$(MAKE) -f apps/traincascade/CMakeFiles/opencv_traincascade.dir/build.make apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o.provides.build
.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o.provides

apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o.provides.build: apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o


apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o: apps/traincascade/lbpfeatures.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o -c /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/lbpfeatures.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.i"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/lbpfeatures.cpp > CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.s"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/lbpfeatures.cpp -o CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.s

apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o.requires:

.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o.requires

apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o.provides: apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o.requires
	$(MAKE) -f apps/traincascade/CMakeFiles/opencv_traincascade.dir/build.make apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o.provides.build
.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o.provides

apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o.provides.build: apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o


apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o: apps/traincascade/HOGfeatures.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o -c /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/HOGfeatures.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.i"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/HOGfeatures.cpp > CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.s"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/HOGfeatures.cpp -o CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.s

apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o.requires:

.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o.requires

apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o.provides: apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o.requires
	$(MAKE) -f apps/traincascade/CMakeFiles/opencv_traincascade.dir/build.make apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o.provides.build
.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o.provides

apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o.provides.build: apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o


apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o: apps/traincascade/imagestorage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o -c /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/imagestorage.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.i"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/imagestorage.cpp > CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.s"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/imagestorage.cpp -o CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.s

apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o.requires:

.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o.requires

apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o.provides: apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o.requires
	$(MAKE) -f apps/traincascade/CMakeFiles/opencv_traincascade.dir/build.make apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o.provides.build
.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o.provides

apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o.provides.build: apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o


# Object files for target opencv_traincascade
opencv_traincascade_OBJECTS = \
"CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o" \
"CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o" \
"CMakeFiles/opencv_traincascade.dir/boost.cpp.o" \
"CMakeFiles/opencv_traincascade.dir/features.cpp.o" \
"CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o" \
"CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o" \
"CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o" \
"CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o"

# External object files for target opencv_traincascade
opencv_traincascade_EXTERNAL_OBJECTS =

bin/opencv_traincascade.exe: apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o
bin/opencv_traincascade.exe: apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o
bin/opencv_traincascade.exe: apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.o
bin/opencv_traincascade.exe: apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.o
bin/opencv_traincascade.exe: apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o
bin/opencv_traincascade.exe: apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o
bin/opencv_traincascade.exe: apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o
bin/opencv_traincascade.exe: apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o
bin/opencv_traincascade.exe: apps/traincascade/CMakeFiles/opencv_traincascade.dir/build.make
bin/opencv_traincascade.exe: lib/libopencv_haartraining_engine.a
bin/opencv_traincascade.exe: lib/libopencv_objdetect.dll.a
bin/opencv_traincascade.exe: lib/libopencv_legacy.dll.a
bin/opencv_traincascade.exe: lib/libopencv_ml.dll.a
bin/opencv_traincascade.exe: lib/libopencv_calib3d.dll.a
bin/opencv_traincascade.exe: lib/libopencv_video.dll.a
bin/opencv_traincascade.exe: lib/libopencv_features2d.dll.a
bin/opencv_traincascade.exe: lib/libopencv_highgui.dll.a
bin/opencv_traincascade.exe: lib/libopencv_imgproc.dll.a
bin/opencv_traincascade.exe: lib/libopencv_flann.dll.a
bin/opencv_traincascade.exe: lib/libopencv_core.dll.a
bin/opencv_traincascade.exe: apps/traincascade/CMakeFiles/opencv_traincascade.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable ../../bin/opencv_traincascade.exe"
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_traincascade.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/traincascade/CMakeFiles/opencv_traincascade.dir/build: bin/opencv_traincascade.exe

.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/build

apps/traincascade/CMakeFiles/opencv_traincascade.dir/requires: apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o.requires
apps/traincascade/CMakeFiles/opencv_traincascade.dir/requires: apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o.requires
apps/traincascade/CMakeFiles/opencv_traincascade.dir/requires: apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.o.requires
apps/traincascade/CMakeFiles/opencv_traincascade.dir/requires: apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.o.requires
apps/traincascade/CMakeFiles/opencv_traincascade.dir/requires: apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o.requires
apps/traincascade/CMakeFiles/opencv_traincascade.dir/requires: apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o.requires
apps/traincascade/CMakeFiles/opencv_traincascade.dir/requires: apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o.requires
apps/traincascade/CMakeFiles/opencv_traincascade.dir/requires: apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o.requires

.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/requires

apps/traincascade/CMakeFiles/opencv_traincascade.dir/clean:
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade && $(CMAKE_COMMAND) -P CMakeFiles/opencv_traincascade.dir/cmake_clean.cmake
.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/clean

apps/traincascade/CMakeFiles/opencv_traincascade.dir/depend:
	cd /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13 /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13 /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade /cygdrive/c/Users/Feng/Documents/Project/SPR/occam_camera/opencv-2.4.13/apps/traincascade/CMakeFiles/opencv_traincascade.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zb/下载/Blur_Detection

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zb/下载/Blur_Detection/build

# Include any dependencies generated for this target.
include CMakeFiles/BLUR_DETECTION.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/BLUR_DETECTION.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BLUR_DETECTION.dir/flags.make

CMakeFiles/BLUR_DETECTION.dir/main.cpp.o: CMakeFiles/BLUR_DETECTION.dir/flags.make
CMakeFiles/BLUR_DETECTION.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zb/下载/Blur_Detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BLUR_DETECTION.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BLUR_DETECTION.dir/main.cpp.o -c /home/zb/下载/Blur_Detection/main.cpp

CMakeFiles/BLUR_DETECTION.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BLUR_DETECTION.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zb/下载/Blur_Detection/main.cpp > CMakeFiles/BLUR_DETECTION.dir/main.cpp.i

CMakeFiles/BLUR_DETECTION.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BLUR_DETECTION.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zb/下载/Blur_Detection/main.cpp -o CMakeFiles/BLUR_DETECTION.dir/main.cpp.s

CMakeFiles/BLUR_DETECTION.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/BLUR_DETECTION.dir/main.cpp.o.requires

CMakeFiles/BLUR_DETECTION.dir/main.cpp.o.provides: CMakeFiles/BLUR_DETECTION.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/BLUR_DETECTION.dir/build.make CMakeFiles/BLUR_DETECTION.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/BLUR_DETECTION.dir/main.cpp.o.provides

CMakeFiles/BLUR_DETECTION.dir/main.cpp.o.provides.build: CMakeFiles/BLUR_DETECTION.dir/main.cpp.o


CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.o: CMakeFiles/BLUR_DETECTION.dir/flags.make
CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.o: ../LSMC.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zb/下载/Blur_Detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.o -c /home/zb/下载/Blur_Detection/LSMC.cpp

CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zb/下载/Blur_Detection/LSMC.cpp > CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.i

CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zb/下载/Blur_Detection/LSMC.cpp -o CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.s

CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.o.requires:

.PHONY : CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.o.requires

CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.o.provides: CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.o.requires
	$(MAKE) -f CMakeFiles/BLUR_DETECTION.dir/build.make CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.o.provides.build
.PHONY : CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.o.provides

CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.o.provides.build: CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.o


CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.o: CMakeFiles/BLUR_DETECTION.dir/flags.make
CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.o: ../img_convert.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zb/下载/Blur_Detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.o -c /home/zb/下载/Blur_Detection/img_convert.cpp

CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zb/下载/Blur_Detection/img_convert.cpp > CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.i

CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zb/下载/Blur_Detection/img_convert.cpp -o CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.s

CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.o.requires:

.PHONY : CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.o.requires

CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.o.provides: CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.o.requires
	$(MAKE) -f CMakeFiles/BLUR_DETECTION.dir/build.make CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.o.provides.build
.PHONY : CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.o.provides

CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.o.provides.build: CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.o


CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.o: CMakeFiles/BLUR_DETECTION.dir/flags.make
CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.o: ../LaplacianDeblur.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zb/下载/Blur_Detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.o -c /home/zb/下载/Blur_Detection/LaplacianDeblur.cpp

CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zb/下载/Blur_Detection/LaplacianDeblur.cpp > CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.i

CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zb/下载/Blur_Detection/LaplacianDeblur.cpp -o CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.s

CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.o.requires:

.PHONY : CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.o.requires

CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.o.provides: CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.o.requires
	$(MAKE) -f CMakeFiles/BLUR_DETECTION.dir/build.make CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.o.provides.build
.PHONY : CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.o.provides

CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.o.provides.build: CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.o


CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.o: CMakeFiles/BLUR_DETECTION.dir/flags.make
CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.o: ../LimitTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zb/下载/Blur_Detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.o -c /home/zb/下载/Blur_Detection/LimitTest.cpp

CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zb/下载/Blur_Detection/LimitTest.cpp > CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.i

CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zb/下载/Blur_Detection/LimitTest.cpp -o CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.s

CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.o.requires:

.PHONY : CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.o.requires

CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.o.provides: CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.o.requires
	$(MAKE) -f CMakeFiles/BLUR_DETECTION.dir/build.make CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.o.provides.build
.PHONY : CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.o.provides

CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.o.provides.build: CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.o


# Object files for target BLUR_DETECTION
BLUR_DETECTION_OBJECTS = \
"CMakeFiles/BLUR_DETECTION.dir/main.cpp.o" \
"CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.o" \
"CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.o" \
"CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.o" \
"CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.o"

# External object files for target BLUR_DETECTION
BLUR_DETECTION_EXTERNAL_OBJECTS =

BLUR_DETECTION: CMakeFiles/BLUR_DETECTION.dir/main.cpp.o
BLUR_DETECTION: CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.o
BLUR_DETECTION: CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.o
BLUR_DETECTION: CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.o
BLUR_DETECTION: CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.o
BLUR_DETECTION: CMakeFiles/BLUR_DETECTION.dir/build.make
BLUR_DETECTION: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.9
BLUR_DETECTION: /usr/lib/x86_64-linux-gnu/libopencv_ts.so.2.4.9
BLUR_DETECTION: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.9
BLUR_DETECTION: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.9
BLUR_DETECTION: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.9
BLUR_DETECTION: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.9
BLUR_DETECTION: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.9
BLUR_DETECTION: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.9
BLUR_DETECTION: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.9
BLUR_DETECTION: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.9
BLUR_DETECTION: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.9
BLUR_DETECTION: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.9
BLUR_DETECTION: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.9
BLUR_DETECTION: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.9
BLUR_DETECTION: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.9
BLUR_DETECTION: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.9
BLUR_DETECTION: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.9
BLUR_DETECTION: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.9
BLUR_DETECTION: CMakeFiles/BLUR_DETECTION.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zb/下载/Blur_Detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable BLUR_DETECTION"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BLUR_DETECTION.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BLUR_DETECTION.dir/build: BLUR_DETECTION

.PHONY : CMakeFiles/BLUR_DETECTION.dir/build

CMakeFiles/BLUR_DETECTION.dir/requires: CMakeFiles/BLUR_DETECTION.dir/main.cpp.o.requires
CMakeFiles/BLUR_DETECTION.dir/requires: CMakeFiles/BLUR_DETECTION.dir/LSMC.cpp.o.requires
CMakeFiles/BLUR_DETECTION.dir/requires: CMakeFiles/BLUR_DETECTION.dir/img_convert.cpp.o.requires
CMakeFiles/BLUR_DETECTION.dir/requires: CMakeFiles/BLUR_DETECTION.dir/LaplacianDeblur.cpp.o.requires
CMakeFiles/BLUR_DETECTION.dir/requires: CMakeFiles/BLUR_DETECTION.dir/LimitTest.cpp.o.requires

.PHONY : CMakeFiles/BLUR_DETECTION.dir/requires

CMakeFiles/BLUR_DETECTION.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BLUR_DETECTION.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BLUR_DETECTION.dir/clean

CMakeFiles/BLUR_DETECTION.dir/depend:
	cd /home/zb/下载/Blur_Detection/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zb/下载/Blur_Detection /home/zb/下载/Blur_Detection /home/zb/下载/Blur_Detection/build /home/zb/下载/Blur_Detection/build /home/zb/下载/Blur_Detection/build/CMakeFiles/BLUR_DETECTION.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BLUR_DETECTION.dir/depend


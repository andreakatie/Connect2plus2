# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/cmake/715/bin/cmake

# The command to remove a file.
RM = /snap/cmake/715/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/adam/Documents/real-time-project/Connect2plus2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/adam/Documents/real-time-project/Connect2plus2/build

# Include any dependencies generated for this target.
include CMakeFiles/RealtimeProject.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/RealtimeProject.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RealtimeProject.dir/flags.make

CMakeFiles/RealtimeProject.dir/main.cpp.o: CMakeFiles/RealtimeProject.dir/flags.make
CMakeFiles/RealtimeProject.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adam/Documents/real-time-project/Connect2plus2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RealtimeProject.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RealtimeProject.dir/main.cpp.o -c /home/adam/Documents/real-time-project/Connect2plus2/main.cpp

CMakeFiles/RealtimeProject.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RealtimeProject.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adam/Documents/real-time-project/Connect2plus2/main.cpp > CMakeFiles/RealtimeProject.dir/main.cpp.i

CMakeFiles/RealtimeProject.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RealtimeProject.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adam/Documents/real-time-project/Connect2plus2/main.cpp -o CMakeFiles/RealtimeProject.dir/main.cpp.s

CMakeFiles/RealtimeProject.dir/GetBoard.cpp.o: CMakeFiles/RealtimeProject.dir/flags.make
CMakeFiles/RealtimeProject.dir/GetBoard.cpp.o: ../GetBoard.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adam/Documents/real-time-project/Connect2plus2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/RealtimeProject.dir/GetBoard.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RealtimeProject.dir/GetBoard.cpp.o -c /home/adam/Documents/real-time-project/Connect2plus2/GetBoard.cpp

CMakeFiles/RealtimeProject.dir/GetBoard.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RealtimeProject.dir/GetBoard.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adam/Documents/real-time-project/Connect2plus2/GetBoard.cpp > CMakeFiles/RealtimeProject.dir/GetBoard.cpp.i

CMakeFiles/RealtimeProject.dir/GetBoard.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RealtimeProject.dir/GetBoard.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adam/Documents/real-time-project/Connect2plus2/GetBoard.cpp -o CMakeFiles/RealtimeProject.dir/GetBoard.cpp.s

CMakeFiles/RealtimeProject.dir/ConnectFour.cpp.o: CMakeFiles/RealtimeProject.dir/flags.make
CMakeFiles/RealtimeProject.dir/ConnectFour.cpp.o: ../ConnectFour.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adam/Documents/real-time-project/Connect2plus2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/RealtimeProject.dir/ConnectFour.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RealtimeProject.dir/ConnectFour.cpp.o -c /home/adam/Documents/real-time-project/Connect2plus2/ConnectFour.cpp

CMakeFiles/RealtimeProject.dir/ConnectFour.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RealtimeProject.dir/ConnectFour.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adam/Documents/real-time-project/Connect2plus2/ConnectFour.cpp > CMakeFiles/RealtimeProject.dir/ConnectFour.cpp.i

CMakeFiles/RealtimeProject.dir/ConnectFour.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RealtimeProject.dir/ConnectFour.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adam/Documents/real-time-project/Connect2plus2/ConnectFour.cpp -o CMakeFiles/RealtimeProject.dir/ConnectFour.cpp.s

CMakeFiles/RealtimeProject.dir/connect4/Solver.cpp.o: CMakeFiles/RealtimeProject.dir/flags.make
CMakeFiles/RealtimeProject.dir/connect4/Solver.cpp.o: ../connect4/Solver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/adam/Documents/real-time-project/Connect2plus2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/RealtimeProject.dir/connect4/Solver.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RealtimeProject.dir/connect4/Solver.cpp.o -c /home/adam/Documents/real-time-project/Connect2plus2/connect4/Solver.cpp

CMakeFiles/RealtimeProject.dir/connect4/Solver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RealtimeProject.dir/connect4/Solver.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adam/Documents/real-time-project/Connect2plus2/connect4/Solver.cpp > CMakeFiles/RealtimeProject.dir/connect4/Solver.cpp.i

CMakeFiles/RealtimeProject.dir/connect4/Solver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RealtimeProject.dir/connect4/Solver.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adam/Documents/real-time-project/Connect2plus2/connect4/Solver.cpp -o CMakeFiles/RealtimeProject.dir/connect4/Solver.cpp.s

# Object files for target RealtimeProject
RealtimeProject_OBJECTS = \
"CMakeFiles/RealtimeProject.dir/main.cpp.o" \
"CMakeFiles/RealtimeProject.dir/GetBoard.cpp.o" \
"CMakeFiles/RealtimeProject.dir/ConnectFour.cpp.o" \
"CMakeFiles/RealtimeProject.dir/connect4/Solver.cpp.o"

# External object files for target RealtimeProject
RealtimeProject_EXTERNAL_OBJECTS =

RealtimeProject: CMakeFiles/RealtimeProject.dir/main.cpp.o
RealtimeProject: CMakeFiles/RealtimeProject.dir/GetBoard.cpp.o
RealtimeProject: CMakeFiles/RealtimeProject.dir/ConnectFour.cpp.o
RealtimeProject: CMakeFiles/RealtimeProject.dir/connect4/Solver.cpp.o
RealtimeProject: CMakeFiles/RealtimeProject.dir/build.make
RealtimeProject: /usr/local/lib/libopencv_gapi.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_stitching.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_aruco.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_bgsegm.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_bioinspired.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_ccalib.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_dnn_objdetect.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_dnn_superres.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_dpm.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_face.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_fuzzy.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_hfs.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_img_hash.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_intensity_transform.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_line_descriptor.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_mcc.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_quality.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_rapid.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_reg.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_rgbd.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_saliency.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_stereo.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_structured_light.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_superres.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_surface_matching.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_tracking.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_videostab.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_xfeatures2d.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_xobjdetect.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_xphoto.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_shape.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_highgui.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_datasets.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_plot.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_text.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_ml.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_phase_unwrapping.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_optflow.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_ximgproc.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_video.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_dnn.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_videoio.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_imgcodecs.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_objdetect.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_calib3d.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_features2d.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_flann.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_photo.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_imgproc.so.4.5.1
RealtimeProject: /usr/local/lib/libopencv_core.so.4.5.1
RealtimeProject: CMakeFiles/RealtimeProject.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/adam/Documents/real-time-project/Connect2plus2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable RealtimeProject"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RealtimeProject.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RealtimeProject.dir/build: RealtimeProject

.PHONY : CMakeFiles/RealtimeProject.dir/build

CMakeFiles/RealtimeProject.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RealtimeProject.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RealtimeProject.dir/clean

CMakeFiles/RealtimeProject.dir/depend:
	cd /home/adam/Documents/real-time-project/Connect2plus2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adam/Documents/real-time-project/Connect2plus2 /home/adam/Documents/real-time-project/Connect2plus2 /home/adam/Documents/real-time-project/Connect2plus2/build /home/adam/Documents/real-time-project/Connect2plus2/build /home/adam/Documents/real-time-project/Connect2plus2/build/CMakeFiles/RealtimeProject.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RealtimeProject.dir/depend


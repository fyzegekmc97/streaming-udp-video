# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/feyzi/streaming-udp-video

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/feyzi/streaming-udp-video

# Include any dependencies generated for this target.
include CMakeFiles/Receiver.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Receiver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Receiver.dir/flags.make

CMakeFiles/Receiver.dir/src/receiver.cpp.o: CMakeFiles/Receiver.dir/flags.make
CMakeFiles/Receiver.dir/src/receiver.cpp.o: src/receiver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/feyzi/streaming-udp-video/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Receiver.dir/src/receiver.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Receiver.dir/src/receiver.cpp.o -c /home/feyzi/streaming-udp-video/src/receiver.cpp

CMakeFiles/Receiver.dir/src/receiver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Receiver.dir/src/receiver.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/feyzi/streaming-udp-video/src/receiver.cpp > CMakeFiles/Receiver.dir/src/receiver.cpp.i

CMakeFiles/Receiver.dir/src/receiver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Receiver.dir/src/receiver.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/feyzi/streaming-udp-video/src/receiver.cpp -o CMakeFiles/Receiver.dir/src/receiver.cpp.s

CMakeFiles/Receiver.dir/src/protocols/basic_protocol.cpp.o: CMakeFiles/Receiver.dir/flags.make
CMakeFiles/Receiver.dir/src/protocols/basic_protocol.cpp.o: src/protocols/basic_protocol.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/feyzi/streaming-udp-video/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Receiver.dir/src/protocols/basic_protocol.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Receiver.dir/src/protocols/basic_protocol.cpp.o -c /home/feyzi/streaming-udp-video/src/protocols/basic_protocol.cpp

CMakeFiles/Receiver.dir/src/protocols/basic_protocol.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Receiver.dir/src/protocols/basic_protocol.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/feyzi/streaming-udp-video/src/protocols/basic_protocol.cpp > CMakeFiles/Receiver.dir/src/protocols/basic_protocol.cpp.i

CMakeFiles/Receiver.dir/src/protocols/basic_protocol.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Receiver.dir/src/protocols/basic_protocol.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/feyzi/streaming-udp-video/src/protocols/basic_protocol.cpp -o CMakeFiles/Receiver.dir/src/protocols/basic_protocol.cpp.s

CMakeFiles/Receiver.dir/src/receiver/receiver_socket.cpp.o: CMakeFiles/Receiver.dir/flags.make
CMakeFiles/Receiver.dir/src/receiver/receiver_socket.cpp.o: src/receiver/receiver_socket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/feyzi/streaming-udp-video/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Receiver.dir/src/receiver/receiver_socket.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Receiver.dir/src/receiver/receiver_socket.cpp.o -c /home/feyzi/streaming-udp-video/src/receiver/receiver_socket.cpp

CMakeFiles/Receiver.dir/src/receiver/receiver_socket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Receiver.dir/src/receiver/receiver_socket.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/feyzi/streaming-udp-video/src/receiver/receiver_socket.cpp > CMakeFiles/Receiver.dir/src/receiver/receiver_socket.cpp.i

CMakeFiles/Receiver.dir/src/receiver/receiver_socket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Receiver.dir/src/receiver/receiver_socket.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/feyzi/streaming-udp-video/src/receiver/receiver_socket.cpp -o CMakeFiles/Receiver.dir/src/receiver/receiver_socket.cpp.s

CMakeFiles/Receiver.dir/src/util/util.cpp.o: CMakeFiles/Receiver.dir/flags.make
CMakeFiles/Receiver.dir/src/util/util.cpp.o: src/util/util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/feyzi/streaming-udp-video/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Receiver.dir/src/util/util.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Receiver.dir/src/util/util.cpp.o -c /home/feyzi/streaming-udp-video/src/util/util.cpp

CMakeFiles/Receiver.dir/src/util/util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Receiver.dir/src/util/util.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/feyzi/streaming-udp-video/src/util/util.cpp > CMakeFiles/Receiver.dir/src/util/util.cpp.i

CMakeFiles/Receiver.dir/src/util/util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Receiver.dir/src/util/util.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/feyzi/streaming-udp-video/src/util/util.cpp -o CMakeFiles/Receiver.dir/src/util/util.cpp.s

CMakeFiles/Receiver.dir/src/video/video_capture.cpp.o: CMakeFiles/Receiver.dir/flags.make
CMakeFiles/Receiver.dir/src/video/video_capture.cpp.o: src/video/video_capture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/feyzi/streaming-udp-video/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Receiver.dir/src/video/video_capture.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Receiver.dir/src/video/video_capture.cpp.o -c /home/feyzi/streaming-udp-video/src/video/video_capture.cpp

CMakeFiles/Receiver.dir/src/video/video_capture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Receiver.dir/src/video/video_capture.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/feyzi/streaming-udp-video/src/video/video_capture.cpp > CMakeFiles/Receiver.dir/src/video/video_capture.cpp.i

CMakeFiles/Receiver.dir/src/video/video_capture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Receiver.dir/src/video/video_capture.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/feyzi/streaming-udp-video/src/video/video_capture.cpp -o CMakeFiles/Receiver.dir/src/video/video_capture.cpp.s

CMakeFiles/Receiver.dir/src/video/video_frame.cpp.o: CMakeFiles/Receiver.dir/flags.make
CMakeFiles/Receiver.dir/src/video/video_frame.cpp.o: src/video/video_frame.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/feyzi/streaming-udp-video/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Receiver.dir/src/video/video_frame.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Receiver.dir/src/video/video_frame.cpp.o -c /home/feyzi/streaming-udp-video/src/video/video_frame.cpp

CMakeFiles/Receiver.dir/src/video/video_frame.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Receiver.dir/src/video/video_frame.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/feyzi/streaming-udp-video/src/video/video_frame.cpp > CMakeFiles/Receiver.dir/src/video/video_frame.cpp.i

CMakeFiles/Receiver.dir/src/video/video_frame.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Receiver.dir/src/video/video_frame.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/feyzi/streaming-udp-video/src/video/video_frame.cpp -o CMakeFiles/Receiver.dir/src/video/video_frame.cpp.s

# Object files for target Receiver
Receiver_OBJECTS = \
"CMakeFiles/Receiver.dir/src/receiver.cpp.o" \
"CMakeFiles/Receiver.dir/src/protocols/basic_protocol.cpp.o" \
"CMakeFiles/Receiver.dir/src/receiver/receiver_socket.cpp.o" \
"CMakeFiles/Receiver.dir/src/util/util.cpp.o" \
"CMakeFiles/Receiver.dir/src/video/video_capture.cpp.o" \
"CMakeFiles/Receiver.dir/src/video/video_frame.cpp.o"

# External object files for target Receiver
Receiver_EXTERNAL_OBJECTS =

bin/Receiver: CMakeFiles/Receiver.dir/src/receiver.cpp.o
bin/Receiver: CMakeFiles/Receiver.dir/src/protocols/basic_protocol.cpp.o
bin/Receiver: CMakeFiles/Receiver.dir/src/receiver/receiver_socket.cpp.o
bin/Receiver: CMakeFiles/Receiver.dir/src/util/util.cpp.o
bin/Receiver: CMakeFiles/Receiver.dir/src/video/video_capture.cpp.o
bin/Receiver: CMakeFiles/Receiver.dir/src/video/video_frame.cpp.o
bin/Receiver: CMakeFiles/Receiver.dir/build.make
bin/Receiver: /usr/local/lib/libopencv_gapi.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_stitching.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_aruco.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_barcode.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_bgsegm.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_bioinspired.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_ccalib.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_dnn_objdetect.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_dnn_superres.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_dpm.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_face.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_freetype.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_fuzzy.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_hfs.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_img_hash.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_intensity_transform.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_line_descriptor.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_mcc.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_quality.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_rapid.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_reg.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_rgbd.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_saliency.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_stereo.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_structured_light.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_superres.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_surface_matching.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_tracking.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_videostab.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_wechat_qrcode.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_xfeatures2d.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_xobjdetect.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_xphoto.so.4.5.5
bin/Receiver: /home/feyzi/.local/share/Trash/files/live555-latest/live/BasicUsageEnvironment/libBasicUsageEnvironment.a
bin/Receiver: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
bin/Receiver: /usr/local/lib/libopencv_shape.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_highgui.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_datasets.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_plot.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_text.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_ml.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_phase_unwrapping.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_optflow.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_ximgproc.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_video.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_videoio.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_imgcodecs.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_objdetect.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_calib3d.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_dnn.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_features2d.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_flann.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_photo.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_imgproc.so.4.5.5
bin/Receiver: /usr/local/lib/libopencv_core.so.4.5.5
bin/Receiver: CMakeFiles/Receiver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/feyzi/streaming-udp-video/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable bin/Receiver"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Receiver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Receiver.dir/build: bin/Receiver

.PHONY : CMakeFiles/Receiver.dir/build

CMakeFiles/Receiver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Receiver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Receiver.dir/clean

CMakeFiles/Receiver.dir/depend:
	cd /home/feyzi/streaming-udp-video && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/feyzi/streaming-udp-video /home/feyzi/streaming-udp-video /home/feyzi/streaming-udp-video /home/feyzi/streaming-udp-video /home/feyzi/streaming-udp-video/CMakeFiles/Receiver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Receiver.dir/depend


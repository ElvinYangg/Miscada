# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.26.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.26.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/elvinyang/College/Durham/Professional Skills/project/gray-scott-sim"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/elvinyang/College/Durham/Professional Skills/project/build"

# Include any dependencies generated for this target.
include CMakeFiles/GrayScottSimulator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/GrayScottSimulator.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/GrayScottSimulator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GrayScottSimulator.dir/flags.make

CMakeFiles/GrayScottSimulator.dir/gs.cpp.o: CMakeFiles/GrayScottSimulator.dir/flags.make
CMakeFiles/GrayScottSimulator.dir/gs.cpp.o: /Users/elvinyang/College/Durham/Professional\ Skills/project/gray-scott-sim/gs.cpp
CMakeFiles/GrayScottSimulator.dir/gs.cpp.o: CMakeFiles/GrayScottSimulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/elvinyang/College/Durham/Professional Skills/project/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/GrayScottSimulator.dir/gs.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GrayScottSimulator.dir/gs.cpp.o -MF CMakeFiles/GrayScottSimulator.dir/gs.cpp.o.d -o CMakeFiles/GrayScottSimulator.dir/gs.cpp.o -c "/Users/elvinyang/College/Durham/Professional Skills/project/gray-scott-sim/gs.cpp"

CMakeFiles/GrayScottSimulator.dir/gs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GrayScottSimulator.dir/gs.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/elvinyang/College/Durham/Professional Skills/project/gray-scott-sim/gs.cpp" > CMakeFiles/GrayScottSimulator.dir/gs.cpp.i

CMakeFiles/GrayScottSimulator.dir/gs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GrayScottSimulator.dir/gs.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/elvinyang/College/Durham/Professional Skills/project/gray-scott-sim/gs.cpp" -o CMakeFiles/GrayScottSimulator.dir/gs.cpp.s

# Object files for target GrayScottSimulator
GrayScottSimulator_OBJECTS = \
"CMakeFiles/GrayScottSimulator.dir/gs.cpp.o"

# External object files for target GrayScottSimulator
GrayScottSimulator_EXTERNAL_OBJECTS =

GrayScottSimulator: CMakeFiles/GrayScottSimulator.dir/gs.cpp.o
GrayScottSimulator: CMakeFiles/GrayScottSimulator.dir/build.make
GrayScottSimulator: CMakeFiles/GrayScottSimulator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/elvinyang/College/Durham/Professional Skills/project/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable GrayScottSimulator"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GrayScottSimulator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GrayScottSimulator.dir/build: GrayScottSimulator
.PHONY : CMakeFiles/GrayScottSimulator.dir/build

CMakeFiles/GrayScottSimulator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GrayScottSimulator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GrayScottSimulator.dir/clean

CMakeFiles/GrayScottSimulator.dir/depend:
	cd "/Users/elvinyang/College/Durham/Professional Skills/project/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/elvinyang/College/Durham/Professional Skills/project/gray-scott-sim" "/Users/elvinyang/College/Durham/Professional Skills/project/gray-scott-sim" "/Users/elvinyang/College/Durham/Professional Skills/project/build" "/Users/elvinyang/College/Durham/Professional Skills/project/build" "/Users/elvinyang/College/Durham/Professional Skills/project/build/CMakeFiles/GrayScottSimulator.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/GrayScottSimulator.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bishan/code/cli/bogosort/bogosortc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bishan/code/cli/bogosort/bogosortc

# Include any dependencies generated for this target.
include CMakeFiles/bogosortc.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/bogosortc.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/bogosortc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bogosortc.dir/flags.make

CMakeFiles/bogosortc.dir/main.c.o: CMakeFiles/bogosortc.dir/flags.make
CMakeFiles/bogosortc.dir/main.c.o: main.c
CMakeFiles/bogosortc.dir/main.c.o: CMakeFiles/bogosortc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bishan/code/cli/bogosort/bogosortc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/bogosortc.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/bogosortc.dir/main.c.o -MF CMakeFiles/bogosortc.dir/main.c.o.d -o CMakeFiles/bogosortc.dir/main.c.o -c /home/bishan/code/cli/bogosort/bogosortc/main.c

CMakeFiles/bogosortc.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bogosortc.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bishan/code/cli/bogosort/bogosortc/main.c > CMakeFiles/bogosortc.dir/main.c.i

CMakeFiles/bogosortc.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bogosortc.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bishan/code/cli/bogosort/bogosortc/main.c -o CMakeFiles/bogosortc.dir/main.c.s

# Object files for target bogosortc
bogosortc_OBJECTS = \
"CMakeFiles/bogosortc.dir/main.c.o"

# External object files for target bogosortc
bogosortc_EXTERNAL_OBJECTS =

bogosortc: CMakeFiles/bogosortc.dir/main.c.o
bogosortc: CMakeFiles/bogosortc.dir/build.make
bogosortc: CMakeFiles/bogosortc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bishan/code/cli/bogosort/bogosortc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable bogosortc"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bogosortc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bogosortc.dir/build: bogosortc
.PHONY : CMakeFiles/bogosortc.dir/build

CMakeFiles/bogosortc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bogosortc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bogosortc.dir/clean

CMakeFiles/bogosortc.dir/depend:
	cd /home/bishan/code/cli/bogosort/bogosortc && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bishan/code/cli/bogosort/bogosortc /home/bishan/code/cli/bogosort/bogosortc /home/bishan/code/cli/bogosort/bogosortc /home/bishan/code/cli/bogosort/bogosortc /home/bishan/code/cli/bogosort/bogosortc/CMakeFiles/bogosortc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bogosortc.dir/depend


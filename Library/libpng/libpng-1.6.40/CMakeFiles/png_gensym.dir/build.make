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
CMAKE_SOURCE_DIR = /home/kansx/Downloads/libpng-1.6.40

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kansx/Downloads/libpng-1.6.40

# Utility rule file for png_gensym.

# Include any custom commands dependencies for this target.
include CMakeFiles/png_gensym.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/png_gensym.dir/progress.make

CMakeFiles/png_gensym: libpng.sym

libpng.sym:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating libpng.sym"
	/usr/bin/cmake -E remove /home/kansx/Downloads/libpng-1.6.40/libpng.sym
	/usr/bin/cmake -E copy /home/kansx/Downloads/libpng-1.6.40/scripts/sym.out /home/kansx/Downloads/libpng-1.6.40/libpng.sym

png_gensym: CMakeFiles/png_gensym
png_gensym: libpng.sym
png_gensym: CMakeFiles/png_gensym.dir/build.make
.PHONY : png_gensym

# Rule to build all files generated by this target.
CMakeFiles/png_gensym.dir/build: png_gensym
.PHONY : CMakeFiles/png_gensym.dir/build

CMakeFiles/png_gensym.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/png_gensym.dir/cmake_clean.cmake
.PHONY : CMakeFiles/png_gensym.dir/clean

CMakeFiles/png_gensym.dir/depend:
	cd /home/kansx/Downloads/libpng-1.6.40 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kansx/Downloads/libpng-1.6.40 /home/kansx/Downloads/libpng-1.6.40 /home/kansx/Downloads/libpng-1.6.40 /home/kansx/Downloads/libpng-1.6.40 /home/kansx/Downloads/libpng-1.6.40/CMakeFiles/png_gensym.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/png_gensym.dir/depend

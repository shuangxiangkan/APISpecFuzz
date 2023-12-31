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

# Include any dependencies generated for this target.
include CMakeFiles/png_shared.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/png_shared.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/png_shared.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/png_shared.dir/flags.make

pnglibconf.h: pnglibconf.out
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating pnglibconf.h"
	/usr/bin/cmake -DOUTPUT=pnglibconf.h -P /home/kansx/Downloads/libpng-1.6.40/scripts/gensrc.cmake

pngprefix.h:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating pngprefix.h"
	/usr/bin/cmake -DOUTPUT=pngprefix.h -P /home/kansx/Downloads/libpng-1.6.40/scripts/gensrc.cmake

pnglibconf.out: pnglibconf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating pnglibconf.out"
	/usr/bin/cmake -DINPUT=/home/kansx/Downloads/libpng-1.6.40/pnglibconf.c -DOUTPUT=/home/kansx/Downloads/libpng-1.6.40/pnglibconf.out -P /home/kansx/Downloads/libpng-1.6.40/scripts/genout.cmake

pnglibconf.c: scripts/pnglibconf.dfa
pnglibconf.c: scripts/options.awk
pnglibconf.c: pngconf.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating pnglibconf.c"
	/usr/bin/cmake -DOUTPUT=pnglibconf.c -P /home/kansx/Downloads/libpng-1.6.40/scripts/gensrc.cmake

CMakeFiles/png_shared.dir/png.c.o: CMakeFiles/png_shared.dir/flags.make
CMakeFiles/png_shared.dir/png.c.o: png.c
CMakeFiles/png_shared.dir/png.c.o: CMakeFiles/png_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/png_shared.dir/png.c.o"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/png_shared.dir/png.c.o -MF CMakeFiles/png_shared.dir/png.c.o.d -o CMakeFiles/png_shared.dir/png.c.o -c /home/kansx/Downloads/libpng-1.6.40/png.c

CMakeFiles/png_shared.dir/png.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_shared.dir/png.c.i"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kansx/Downloads/libpng-1.6.40/png.c > CMakeFiles/png_shared.dir/png.c.i

CMakeFiles/png_shared.dir/png.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_shared.dir/png.c.s"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kansx/Downloads/libpng-1.6.40/png.c -o CMakeFiles/png_shared.dir/png.c.s

CMakeFiles/png_shared.dir/pngerror.c.o: CMakeFiles/png_shared.dir/flags.make
CMakeFiles/png_shared.dir/pngerror.c.o: pngerror.c
CMakeFiles/png_shared.dir/pngerror.c.o: CMakeFiles/png_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/png_shared.dir/pngerror.c.o"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/png_shared.dir/pngerror.c.o -MF CMakeFiles/png_shared.dir/pngerror.c.o.d -o CMakeFiles/png_shared.dir/pngerror.c.o -c /home/kansx/Downloads/libpng-1.6.40/pngerror.c

CMakeFiles/png_shared.dir/pngerror.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_shared.dir/pngerror.c.i"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kansx/Downloads/libpng-1.6.40/pngerror.c > CMakeFiles/png_shared.dir/pngerror.c.i

CMakeFiles/png_shared.dir/pngerror.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_shared.dir/pngerror.c.s"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kansx/Downloads/libpng-1.6.40/pngerror.c -o CMakeFiles/png_shared.dir/pngerror.c.s

CMakeFiles/png_shared.dir/pngget.c.o: CMakeFiles/png_shared.dir/flags.make
CMakeFiles/png_shared.dir/pngget.c.o: pngget.c
CMakeFiles/png_shared.dir/pngget.c.o: CMakeFiles/png_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/png_shared.dir/pngget.c.o"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/png_shared.dir/pngget.c.o -MF CMakeFiles/png_shared.dir/pngget.c.o.d -o CMakeFiles/png_shared.dir/pngget.c.o -c /home/kansx/Downloads/libpng-1.6.40/pngget.c

CMakeFiles/png_shared.dir/pngget.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_shared.dir/pngget.c.i"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kansx/Downloads/libpng-1.6.40/pngget.c > CMakeFiles/png_shared.dir/pngget.c.i

CMakeFiles/png_shared.dir/pngget.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_shared.dir/pngget.c.s"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kansx/Downloads/libpng-1.6.40/pngget.c -o CMakeFiles/png_shared.dir/pngget.c.s

CMakeFiles/png_shared.dir/pngmem.c.o: CMakeFiles/png_shared.dir/flags.make
CMakeFiles/png_shared.dir/pngmem.c.o: pngmem.c
CMakeFiles/png_shared.dir/pngmem.c.o: CMakeFiles/png_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/png_shared.dir/pngmem.c.o"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/png_shared.dir/pngmem.c.o -MF CMakeFiles/png_shared.dir/pngmem.c.o.d -o CMakeFiles/png_shared.dir/pngmem.c.o -c /home/kansx/Downloads/libpng-1.6.40/pngmem.c

CMakeFiles/png_shared.dir/pngmem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_shared.dir/pngmem.c.i"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kansx/Downloads/libpng-1.6.40/pngmem.c > CMakeFiles/png_shared.dir/pngmem.c.i

CMakeFiles/png_shared.dir/pngmem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_shared.dir/pngmem.c.s"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kansx/Downloads/libpng-1.6.40/pngmem.c -o CMakeFiles/png_shared.dir/pngmem.c.s

CMakeFiles/png_shared.dir/pngpread.c.o: CMakeFiles/png_shared.dir/flags.make
CMakeFiles/png_shared.dir/pngpread.c.o: pngpread.c
CMakeFiles/png_shared.dir/pngpread.c.o: CMakeFiles/png_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/png_shared.dir/pngpread.c.o"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/png_shared.dir/pngpread.c.o -MF CMakeFiles/png_shared.dir/pngpread.c.o.d -o CMakeFiles/png_shared.dir/pngpread.c.o -c /home/kansx/Downloads/libpng-1.6.40/pngpread.c

CMakeFiles/png_shared.dir/pngpread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_shared.dir/pngpread.c.i"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kansx/Downloads/libpng-1.6.40/pngpread.c > CMakeFiles/png_shared.dir/pngpread.c.i

CMakeFiles/png_shared.dir/pngpread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_shared.dir/pngpread.c.s"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kansx/Downloads/libpng-1.6.40/pngpread.c -o CMakeFiles/png_shared.dir/pngpread.c.s

CMakeFiles/png_shared.dir/pngread.c.o: CMakeFiles/png_shared.dir/flags.make
CMakeFiles/png_shared.dir/pngread.c.o: pngread.c
CMakeFiles/png_shared.dir/pngread.c.o: CMakeFiles/png_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/png_shared.dir/pngread.c.o"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/png_shared.dir/pngread.c.o -MF CMakeFiles/png_shared.dir/pngread.c.o.d -o CMakeFiles/png_shared.dir/pngread.c.o -c /home/kansx/Downloads/libpng-1.6.40/pngread.c

CMakeFiles/png_shared.dir/pngread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_shared.dir/pngread.c.i"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kansx/Downloads/libpng-1.6.40/pngread.c > CMakeFiles/png_shared.dir/pngread.c.i

CMakeFiles/png_shared.dir/pngread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_shared.dir/pngread.c.s"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kansx/Downloads/libpng-1.6.40/pngread.c -o CMakeFiles/png_shared.dir/pngread.c.s

CMakeFiles/png_shared.dir/pngrio.c.o: CMakeFiles/png_shared.dir/flags.make
CMakeFiles/png_shared.dir/pngrio.c.o: pngrio.c
CMakeFiles/png_shared.dir/pngrio.c.o: CMakeFiles/png_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/png_shared.dir/pngrio.c.o"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/png_shared.dir/pngrio.c.o -MF CMakeFiles/png_shared.dir/pngrio.c.o.d -o CMakeFiles/png_shared.dir/pngrio.c.o -c /home/kansx/Downloads/libpng-1.6.40/pngrio.c

CMakeFiles/png_shared.dir/pngrio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_shared.dir/pngrio.c.i"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kansx/Downloads/libpng-1.6.40/pngrio.c > CMakeFiles/png_shared.dir/pngrio.c.i

CMakeFiles/png_shared.dir/pngrio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_shared.dir/pngrio.c.s"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kansx/Downloads/libpng-1.6.40/pngrio.c -o CMakeFiles/png_shared.dir/pngrio.c.s

CMakeFiles/png_shared.dir/pngrtran.c.o: CMakeFiles/png_shared.dir/flags.make
CMakeFiles/png_shared.dir/pngrtran.c.o: pngrtran.c
CMakeFiles/png_shared.dir/pngrtran.c.o: CMakeFiles/png_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/png_shared.dir/pngrtran.c.o"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/png_shared.dir/pngrtran.c.o -MF CMakeFiles/png_shared.dir/pngrtran.c.o.d -o CMakeFiles/png_shared.dir/pngrtran.c.o -c /home/kansx/Downloads/libpng-1.6.40/pngrtran.c

CMakeFiles/png_shared.dir/pngrtran.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_shared.dir/pngrtran.c.i"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kansx/Downloads/libpng-1.6.40/pngrtran.c > CMakeFiles/png_shared.dir/pngrtran.c.i

CMakeFiles/png_shared.dir/pngrtran.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_shared.dir/pngrtran.c.s"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kansx/Downloads/libpng-1.6.40/pngrtran.c -o CMakeFiles/png_shared.dir/pngrtran.c.s

CMakeFiles/png_shared.dir/pngrutil.c.o: CMakeFiles/png_shared.dir/flags.make
CMakeFiles/png_shared.dir/pngrutil.c.o: pngrutil.c
CMakeFiles/png_shared.dir/pngrutil.c.o: CMakeFiles/png_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/png_shared.dir/pngrutil.c.o"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/png_shared.dir/pngrutil.c.o -MF CMakeFiles/png_shared.dir/pngrutil.c.o.d -o CMakeFiles/png_shared.dir/pngrutil.c.o -c /home/kansx/Downloads/libpng-1.6.40/pngrutil.c

CMakeFiles/png_shared.dir/pngrutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_shared.dir/pngrutil.c.i"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kansx/Downloads/libpng-1.6.40/pngrutil.c > CMakeFiles/png_shared.dir/pngrutil.c.i

CMakeFiles/png_shared.dir/pngrutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_shared.dir/pngrutil.c.s"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kansx/Downloads/libpng-1.6.40/pngrutil.c -o CMakeFiles/png_shared.dir/pngrutil.c.s

CMakeFiles/png_shared.dir/pngset.c.o: CMakeFiles/png_shared.dir/flags.make
CMakeFiles/png_shared.dir/pngset.c.o: pngset.c
CMakeFiles/png_shared.dir/pngset.c.o: CMakeFiles/png_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/png_shared.dir/pngset.c.o"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/png_shared.dir/pngset.c.o -MF CMakeFiles/png_shared.dir/pngset.c.o.d -o CMakeFiles/png_shared.dir/pngset.c.o -c /home/kansx/Downloads/libpng-1.6.40/pngset.c

CMakeFiles/png_shared.dir/pngset.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_shared.dir/pngset.c.i"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kansx/Downloads/libpng-1.6.40/pngset.c > CMakeFiles/png_shared.dir/pngset.c.i

CMakeFiles/png_shared.dir/pngset.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_shared.dir/pngset.c.s"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kansx/Downloads/libpng-1.6.40/pngset.c -o CMakeFiles/png_shared.dir/pngset.c.s

CMakeFiles/png_shared.dir/pngtrans.c.o: CMakeFiles/png_shared.dir/flags.make
CMakeFiles/png_shared.dir/pngtrans.c.o: pngtrans.c
CMakeFiles/png_shared.dir/pngtrans.c.o: CMakeFiles/png_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/png_shared.dir/pngtrans.c.o"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/png_shared.dir/pngtrans.c.o -MF CMakeFiles/png_shared.dir/pngtrans.c.o.d -o CMakeFiles/png_shared.dir/pngtrans.c.o -c /home/kansx/Downloads/libpng-1.6.40/pngtrans.c

CMakeFiles/png_shared.dir/pngtrans.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_shared.dir/pngtrans.c.i"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kansx/Downloads/libpng-1.6.40/pngtrans.c > CMakeFiles/png_shared.dir/pngtrans.c.i

CMakeFiles/png_shared.dir/pngtrans.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_shared.dir/pngtrans.c.s"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kansx/Downloads/libpng-1.6.40/pngtrans.c -o CMakeFiles/png_shared.dir/pngtrans.c.s

CMakeFiles/png_shared.dir/pngwio.c.o: CMakeFiles/png_shared.dir/flags.make
CMakeFiles/png_shared.dir/pngwio.c.o: pngwio.c
CMakeFiles/png_shared.dir/pngwio.c.o: CMakeFiles/png_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object CMakeFiles/png_shared.dir/pngwio.c.o"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/png_shared.dir/pngwio.c.o -MF CMakeFiles/png_shared.dir/pngwio.c.o.d -o CMakeFiles/png_shared.dir/pngwio.c.o -c /home/kansx/Downloads/libpng-1.6.40/pngwio.c

CMakeFiles/png_shared.dir/pngwio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_shared.dir/pngwio.c.i"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kansx/Downloads/libpng-1.6.40/pngwio.c > CMakeFiles/png_shared.dir/pngwio.c.i

CMakeFiles/png_shared.dir/pngwio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_shared.dir/pngwio.c.s"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kansx/Downloads/libpng-1.6.40/pngwio.c -o CMakeFiles/png_shared.dir/pngwio.c.s

CMakeFiles/png_shared.dir/pngwrite.c.o: CMakeFiles/png_shared.dir/flags.make
CMakeFiles/png_shared.dir/pngwrite.c.o: pngwrite.c
CMakeFiles/png_shared.dir/pngwrite.c.o: CMakeFiles/png_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building C object CMakeFiles/png_shared.dir/pngwrite.c.o"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/png_shared.dir/pngwrite.c.o -MF CMakeFiles/png_shared.dir/pngwrite.c.o.d -o CMakeFiles/png_shared.dir/pngwrite.c.o -c /home/kansx/Downloads/libpng-1.6.40/pngwrite.c

CMakeFiles/png_shared.dir/pngwrite.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_shared.dir/pngwrite.c.i"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kansx/Downloads/libpng-1.6.40/pngwrite.c > CMakeFiles/png_shared.dir/pngwrite.c.i

CMakeFiles/png_shared.dir/pngwrite.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_shared.dir/pngwrite.c.s"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kansx/Downloads/libpng-1.6.40/pngwrite.c -o CMakeFiles/png_shared.dir/pngwrite.c.s

CMakeFiles/png_shared.dir/pngwtran.c.o: CMakeFiles/png_shared.dir/flags.make
CMakeFiles/png_shared.dir/pngwtran.c.o: pngwtran.c
CMakeFiles/png_shared.dir/pngwtran.c.o: CMakeFiles/png_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building C object CMakeFiles/png_shared.dir/pngwtran.c.o"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/png_shared.dir/pngwtran.c.o -MF CMakeFiles/png_shared.dir/pngwtran.c.o.d -o CMakeFiles/png_shared.dir/pngwtran.c.o -c /home/kansx/Downloads/libpng-1.6.40/pngwtran.c

CMakeFiles/png_shared.dir/pngwtran.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_shared.dir/pngwtran.c.i"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kansx/Downloads/libpng-1.6.40/pngwtran.c > CMakeFiles/png_shared.dir/pngwtran.c.i

CMakeFiles/png_shared.dir/pngwtran.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_shared.dir/pngwtran.c.s"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kansx/Downloads/libpng-1.6.40/pngwtran.c -o CMakeFiles/png_shared.dir/pngwtran.c.s

CMakeFiles/png_shared.dir/pngwutil.c.o: CMakeFiles/png_shared.dir/flags.make
CMakeFiles/png_shared.dir/pngwutil.c.o: pngwutil.c
CMakeFiles/png_shared.dir/pngwutil.c.o: CMakeFiles/png_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building C object CMakeFiles/png_shared.dir/pngwutil.c.o"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/png_shared.dir/pngwutil.c.o -MF CMakeFiles/png_shared.dir/pngwutil.c.o.d -o CMakeFiles/png_shared.dir/pngwutil.c.o -c /home/kansx/Downloads/libpng-1.6.40/pngwutil.c

CMakeFiles/png_shared.dir/pngwutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_shared.dir/pngwutil.c.i"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kansx/Downloads/libpng-1.6.40/pngwutil.c > CMakeFiles/png_shared.dir/pngwutil.c.i

CMakeFiles/png_shared.dir/pngwutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_shared.dir/pngwutil.c.s"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kansx/Downloads/libpng-1.6.40/pngwutil.c -o CMakeFiles/png_shared.dir/pngwutil.c.s

CMakeFiles/png_shared.dir/intel/intel_init.c.o: CMakeFiles/png_shared.dir/flags.make
CMakeFiles/png_shared.dir/intel/intel_init.c.o: intel/intel_init.c
CMakeFiles/png_shared.dir/intel/intel_init.c.o: CMakeFiles/png_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building C object CMakeFiles/png_shared.dir/intel/intel_init.c.o"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/png_shared.dir/intel/intel_init.c.o -MF CMakeFiles/png_shared.dir/intel/intel_init.c.o.d -o CMakeFiles/png_shared.dir/intel/intel_init.c.o -c /home/kansx/Downloads/libpng-1.6.40/intel/intel_init.c

CMakeFiles/png_shared.dir/intel/intel_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_shared.dir/intel/intel_init.c.i"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kansx/Downloads/libpng-1.6.40/intel/intel_init.c > CMakeFiles/png_shared.dir/intel/intel_init.c.i

CMakeFiles/png_shared.dir/intel/intel_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_shared.dir/intel/intel_init.c.s"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kansx/Downloads/libpng-1.6.40/intel/intel_init.c -o CMakeFiles/png_shared.dir/intel/intel_init.c.s

CMakeFiles/png_shared.dir/intel/filter_sse2_intrinsics.c.o: CMakeFiles/png_shared.dir/flags.make
CMakeFiles/png_shared.dir/intel/filter_sse2_intrinsics.c.o: intel/filter_sse2_intrinsics.c
CMakeFiles/png_shared.dir/intel/filter_sse2_intrinsics.c.o: CMakeFiles/png_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Building C object CMakeFiles/png_shared.dir/intel/filter_sse2_intrinsics.c.o"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/png_shared.dir/intel/filter_sse2_intrinsics.c.o -MF CMakeFiles/png_shared.dir/intel/filter_sse2_intrinsics.c.o.d -o CMakeFiles/png_shared.dir/intel/filter_sse2_intrinsics.c.o -c /home/kansx/Downloads/libpng-1.6.40/intel/filter_sse2_intrinsics.c

CMakeFiles/png_shared.dir/intel/filter_sse2_intrinsics.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png_shared.dir/intel/filter_sse2_intrinsics.c.i"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kansx/Downloads/libpng-1.6.40/intel/filter_sse2_intrinsics.c > CMakeFiles/png_shared.dir/intel/filter_sse2_intrinsics.c.i

CMakeFiles/png_shared.dir/intel/filter_sse2_intrinsics.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png_shared.dir/intel/filter_sse2_intrinsics.c.s"
	/usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kansx/Downloads/libpng-1.6.40/intel/filter_sse2_intrinsics.c -o CMakeFiles/png_shared.dir/intel/filter_sse2_intrinsics.c.s

# Object files for target png_shared
png_shared_OBJECTS = \
"CMakeFiles/png_shared.dir/png.c.o" \
"CMakeFiles/png_shared.dir/pngerror.c.o" \
"CMakeFiles/png_shared.dir/pngget.c.o" \
"CMakeFiles/png_shared.dir/pngmem.c.o" \
"CMakeFiles/png_shared.dir/pngpread.c.o" \
"CMakeFiles/png_shared.dir/pngread.c.o" \
"CMakeFiles/png_shared.dir/pngrio.c.o" \
"CMakeFiles/png_shared.dir/pngrtran.c.o" \
"CMakeFiles/png_shared.dir/pngrutil.c.o" \
"CMakeFiles/png_shared.dir/pngset.c.o" \
"CMakeFiles/png_shared.dir/pngtrans.c.o" \
"CMakeFiles/png_shared.dir/pngwio.c.o" \
"CMakeFiles/png_shared.dir/pngwrite.c.o" \
"CMakeFiles/png_shared.dir/pngwtran.c.o" \
"CMakeFiles/png_shared.dir/pngwutil.c.o" \
"CMakeFiles/png_shared.dir/intel/intel_init.c.o" \
"CMakeFiles/png_shared.dir/intel/filter_sse2_intrinsics.c.o"

# External object files for target png_shared
png_shared_EXTERNAL_OBJECTS =

libpng16.so.16.40.0: CMakeFiles/png_shared.dir/png.c.o
libpng16.so.16.40.0: CMakeFiles/png_shared.dir/pngerror.c.o
libpng16.so.16.40.0: CMakeFiles/png_shared.dir/pngget.c.o
libpng16.so.16.40.0: CMakeFiles/png_shared.dir/pngmem.c.o
libpng16.so.16.40.0: CMakeFiles/png_shared.dir/pngpread.c.o
libpng16.so.16.40.0: CMakeFiles/png_shared.dir/pngread.c.o
libpng16.so.16.40.0: CMakeFiles/png_shared.dir/pngrio.c.o
libpng16.so.16.40.0: CMakeFiles/png_shared.dir/pngrtran.c.o
libpng16.so.16.40.0: CMakeFiles/png_shared.dir/pngrutil.c.o
libpng16.so.16.40.0: CMakeFiles/png_shared.dir/pngset.c.o
libpng16.so.16.40.0: CMakeFiles/png_shared.dir/pngtrans.c.o
libpng16.so.16.40.0: CMakeFiles/png_shared.dir/pngwio.c.o
libpng16.so.16.40.0: CMakeFiles/png_shared.dir/pngwrite.c.o
libpng16.so.16.40.0: CMakeFiles/png_shared.dir/pngwtran.c.o
libpng16.so.16.40.0: CMakeFiles/png_shared.dir/pngwutil.c.o
libpng16.so.16.40.0: CMakeFiles/png_shared.dir/intel/intel_init.c.o
libpng16.so.16.40.0: CMakeFiles/png_shared.dir/intel/filter_sse2_intrinsics.c.o
libpng16.so.16.40.0: CMakeFiles/png_shared.dir/build.make
libpng16.so.16.40.0: /usr/lib/x86_64-linux-gnu/libz.so
libpng16.so.16.40.0: /usr/lib/x86_64-linux-gnu/libm.so
libpng16.so.16.40.0: CMakeFiles/png_shared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kansx/Downloads/libpng-1.6.40/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "Linking C shared library libpng16.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/png_shared.dir/link.txt --verbose=$(VERBOSE)
	$(CMAKE_COMMAND) -E cmake_symlink_library libpng16.so.16.40.0 libpng16.so.16 libpng16.so
	/usr/bin/cmake -E create_symlink libpng16.so /home/kansx/Downloads/libpng-1.6.40/libpng.so

libpng16.so.16: libpng16.so.16.40.0
	@$(CMAKE_COMMAND) -E touch_nocreate libpng16.so.16

libpng16.so: libpng16.so.16.40.0
	@$(CMAKE_COMMAND) -E touch_nocreate libpng16.so

# Rule to build all files generated by this target.
CMakeFiles/png_shared.dir/build: libpng16.so
.PHONY : CMakeFiles/png_shared.dir/build

CMakeFiles/png_shared.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/png_shared.dir/cmake_clean.cmake
.PHONY : CMakeFiles/png_shared.dir/clean

CMakeFiles/png_shared.dir/depend: pnglibconf.c
CMakeFiles/png_shared.dir/depend: pnglibconf.h
CMakeFiles/png_shared.dir/depend: pnglibconf.out
CMakeFiles/png_shared.dir/depend: pngprefix.h
	cd /home/kansx/Downloads/libpng-1.6.40 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kansx/Downloads/libpng-1.6.40 /home/kansx/Downloads/libpng-1.6.40 /home/kansx/Downloads/libpng-1.6.40 /home/kansx/Downloads/libpng-1.6.40 /home/kansx/Downloads/libpng-1.6.40/CMakeFiles/png_shared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/png_shared.dir/depend


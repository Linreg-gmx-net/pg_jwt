# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_SOURCE_DIR = /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp

# Include any dependencies generated for this target.
include example/CMakeFiles/rsa-create.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include example/CMakeFiles/rsa-create.dir/compiler_depend.make

# Include the progress variables for this target.
include example/CMakeFiles/rsa-create.dir/progress.make

# Include the compile flags for this target's objects.
include example/CMakeFiles/rsa-create.dir/flags.make

example/CMakeFiles/rsa-create.dir/rsa-create.cpp.o: example/CMakeFiles/rsa-create.dir/flags.make
example/CMakeFiles/rsa-create.dir/rsa-create.cpp.o: example/rsa-create.cpp
example/CMakeFiles/rsa-create.dir/rsa-create.cpp.o: example/CMakeFiles/rsa-create.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/CMakeFiles/rsa-create.dir/rsa-create.cpp.o"
	cd /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT example/CMakeFiles/rsa-create.dir/rsa-create.cpp.o -MF CMakeFiles/rsa-create.dir/rsa-create.cpp.o.d -o CMakeFiles/rsa-create.dir/rsa-create.cpp.o -c /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example/rsa-create.cpp

example/CMakeFiles/rsa-create.dir/rsa-create.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rsa-create.dir/rsa-create.cpp.i"
	cd /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example/rsa-create.cpp > CMakeFiles/rsa-create.dir/rsa-create.cpp.i

example/CMakeFiles/rsa-create.dir/rsa-create.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rsa-create.dir/rsa-create.cpp.s"
	cd /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example/rsa-create.cpp -o CMakeFiles/rsa-create.dir/rsa-create.cpp.s

# Object files for target rsa-create
rsa__create_OBJECTS = \
"CMakeFiles/rsa-create.dir/rsa-create.cpp.o"

# External object files for target rsa-create
rsa__create_EXTERNAL_OBJECTS =

example/rsa-create: example/CMakeFiles/rsa-create.dir/rsa-create.cpp.o
example/rsa-create: example/CMakeFiles/rsa-create.dir/build.make
example/rsa-create: /usr/lib64/libssl.so
example/rsa-create: /usr/lib64/libcrypto.so
example/rsa-create: example/CMakeFiles/rsa-create.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable rsa-create"
	cd /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rsa-create.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/CMakeFiles/rsa-create.dir/build: example/rsa-create
.PHONY : example/CMakeFiles/rsa-create.dir/build

example/CMakeFiles/rsa-create.dir/clean:
	cd /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example && $(CMAKE_COMMAND) -P CMakeFiles/rsa-create.dir/cmake_clean.cmake
.PHONY : example/CMakeFiles/rsa-create.dir/clean

example/CMakeFiles/rsa-create.dir/depend:
	cd /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example/CMakeFiles/rsa-create.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/CMakeFiles/rsa-create.dir/depend


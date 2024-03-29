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
include example/traits/CMakeFiles/boost-json.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include example/traits/CMakeFiles/boost-json.dir/compiler_depend.make

# Include the progress variables for this target.
include example/traits/CMakeFiles/boost-json.dir/progress.make

# Include the compile flags for this target's objects.
include example/traits/CMakeFiles/boost-json.dir/flags.make

example/traits/CMakeFiles/boost-json.dir/boost-json.cpp.o: example/traits/CMakeFiles/boost-json.dir/flags.make
example/traits/CMakeFiles/boost-json.dir/boost-json.cpp.o: example/traits/boost-json.cpp
example/traits/CMakeFiles/boost-json.dir/boost-json.cpp.o: example/traits/CMakeFiles/boost-json.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/traits/CMakeFiles/boost-json.dir/boost-json.cpp.o"
	cd /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example/traits && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT example/traits/CMakeFiles/boost-json.dir/boost-json.cpp.o -MF CMakeFiles/boost-json.dir/boost-json.cpp.o.d -o CMakeFiles/boost-json.dir/boost-json.cpp.o -c /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example/traits/boost-json.cpp

example/traits/CMakeFiles/boost-json.dir/boost-json.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/boost-json.dir/boost-json.cpp.i"
	cd /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example/traits && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example/traits/boost-json.cpp > CMakeFiles/boost-json.dir/boost-json.cpp.i

example/traits/CMakeFiles/boost-json.dir/boost-json.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/boost-json.dir/boost-json.cpp.s"
	cd /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example/traits && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example/traits/boost-json.cpp -o CMakeFiles/boost-json.dir/boost-json.cpp.s

# Object files for target boost-json
boost__json_OBJECTS = \
"CMakeFiles/boost-json.dir/boost-json.cpp.o"

# External object files for target boost-json
boost__json_EXTERNAL_OBJECTS =

example/traits/boost-json: example/traits/CMakeFiles/boost-json.dir/boost-json.cpp.o
example/traits/boost-json: example/traits/CMakeFiles/boost-json.dir/build.make
example/traits/boost-json: example/traits/libboost_json.a
example/traits/boost-json: /usr/lib64/libssl.so
example/traits/boost-json: /usr/lib64/libcrypto.so
example/traits/boost-json: example/traits/CMakeFiles/boost-json.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable boost-json"
	cd /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example/traits && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/boost-json.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/traits/CMakeFiles/boost-json.dir/build: example/traits/boost-json
.PHONY : example/traits/CMakeFiles/boost-json.dir/build

example/traits/CMakeFiles/boost-json.dir/clean:
	cd /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example/traits && $(CMAKE_COMMAND) -P CMakeFiles/boost-json.dir/cmake_clean.cmake
.PHONY : example/traits/CMakeFiles/boost-json.dir/clean

example/traits/CMakeFiles/boost-json.dir/depend:
	cd /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example/traits /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example/traits /home/thomas.steffen/Documents/Programmierung/CPP/pg_server/jwt-cpp/example/traits/CMakeFiles/boost-json.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/traits/CMakeFiles/boost-json.dir/depend


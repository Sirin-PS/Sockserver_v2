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
CMAKE_SOURCE_DIR = /home/darya/cxx_projects/db_server/server_v2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/darya/cxx_projects/db_server/server_v2/build

# Include any dependencies generated for this target.
include CMakeFiles/rdb_server2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/rdb_server2.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/rdb_server2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rdb_server2.dir/flags.make

CMakeFiles/rdb_server2.dir/server2.cpp.o: CMakeFiles/rdb_server2.dir/flags.make
CMakeFiles/rdb_server2.dir/server2.cpp.o: ../server2.cpp
CMakeFiles/rdb_server2.dir/server2.cpp.o: CMakeFiles/rdb_server2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/darya/cxx_projects/db_server/server_v2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rdb_server2.dir/server2.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rdb_server2.dir/server2.cpp.o -MF CMakeFiles/rdb_server2.dir/server2.cpp.o.d -o CMakeFiles/rdb_server2.dir/server2.cpp.o -c /home/darya/cxx_projects/db_server/server_v2/server2.cpp

CMakeFiles/rdb_server2.dir/server2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdb_server2.dir/server2.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/darya/cxx_projects/db_server/server_v2/server2.cpp > CMakeFiles/rdb_server2.dir/server2.cpp.i

CMakeFiles/rdb_server2.dir/server2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdb_server2.dir/server2.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/darya/cxx_projects/db_server/server_v2/server2.cpp -o CMakeFiles/rdb_server2.dir/server2.cpp.s

# Object files for target rdb_server2
rdb_server2_OBJECTS = \
"CMakeFiles/rdb_server2.dir/server2.cpp.o"

# External object files for target rdb_server2
rdb_server2_EXTERNAL_OBJECTS =

rdb_server2: CMakeFiles/rdb_server2.dir/server2.cpp.o
rdb_server2: CMakeFiles/rdb_server2.dir/build.make
rdb_server2: /usr/lib/x86_64-linux-gnu/libpthread.a
rdb_server2: CMakeFiles/rdb_server2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/darya/cxx_projects/db_server/server_v2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable rdb_server2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rdb_server2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rdb_server2.dir/build: rdb_server2
.PHONY : CMakeFiles/rdb_server2.dir/build

CMakeFiles/rdb_server2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rdb_server2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rdb_server2.dir/clean

CMakeFiles/rdb_server2.dir/depend:
	cd /home/darya/cxx_projects/db_server/server_v2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/darya/cxx_projects/db_server/server_v2 /home/darya/cxx_projects/db_server/server_v2 /home/darya/cxx_projects/db_server/server_v2/build /home/darya/cxx_projects/db_server/server_v2/build /home/darya/cxx_projects/db_server/server_v2/build/CMakeFiles/rdb_server2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rdb_server2.dir/depend

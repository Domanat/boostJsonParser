# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_SOURCE_DIR = /home/kudakov/boost/libs/beast

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kudakov/boost/libs/beast/test_build

# Include any dependencies generated for this target.
include CMakeFiles/lib-beast.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lib-beast.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lib-beast.dir/flags.make

CMakeFiles/lib-beast.dir/test/lib_beast.cpp.o: CMakeFiles/lib-beast.dir/flags.make
CMakeFiles/lib-beast.dir/test/lib_beast.cpp.o: ../test/lib_beast.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kudakov/boost/libs/beast/test_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lib-beast.dir/test/lib_beast.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lib-beast.dir/test/lib_beast.cpp.o -c /home/kudakov/boost/libs/beast/test/lib_beast.cpp

CMakeFiles/lib-beast.dir/test/lib_beast.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lib-beast.dir/test/lib_beast.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kudakov/boost/libs/beast/test/lib_beast.cpp > CMakeFiles/lib-beast.dir/test/lib_beast.cpp.i

CMakeFiles/lib-beast.dir/test/lib_beast.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lib-beast.dir/test/lib_beast.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kudakov/boost/libs/beast/test/lib_beast.cpp -o CMakeFiles/lib-beast.dir/test/lib_beast.cpp.s

# Object files for target lib-beast
lib__beast_OBJECTS = \
"CMakeFiles/lib-beast.dir/test/lib_beast.cpp.o"

# External object files for target lib-beast
lib__beast_EXTERNAL_OBJECTS =

liblib-beast.a: CMakeFiles/lib-beast.dir/test/lib_beast.cpp.o
liblib-beast.a: CMakeFiles/lib-beast.dir/build.make
liblib-beast.a: CMakeFiles/lib-beast.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kudakov/boost/libs/beast/test_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblib-beast.a"
	$(CMAKE_COMMAND) -P CMakeFiles/lib-beast.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lib-beast.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lib-beast.dir/build: liblib-beast.a

.PHONY : CMakeFiles/lib-beast.dir/build

CMakeFiles/lib-beast.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lib-beast.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lib-beast.dir/clean

CMakeFiles/lib-beast.dir/depend:
	cd /home/kudakov/boost/libs/beast/test_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kudakov/boost/libs/beast /home/kudakov/boost/libs/beast /home/kudakov/boost/libs/beast/test_build /home/kudakov/boost/libs/beast/test_build /home/kudakov/boost/libs/beast/test_build/CMakeFiles/lib-beast.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lib-beast.dir/depend


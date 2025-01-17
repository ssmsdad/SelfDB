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
CMAKE_SOURCE_DIR = /home/zhangwenzhe/learning_c++/selfdb/cpp-app

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhangwenzhe/learning_c++/selfdb/cpp-app/build

# Include any dependencies generated for this target.
include src/persistence/CMakeFiles/persistence.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/persistence/CMakeFiles/persistence.dir/compiler_depend.make

# Include the progress variables for this target.
include src/persistence/CMakeFiles/persistence.dir/progress.make

# Include the compile flags for this target's objects.
include src/persistence/CMakeFiles/persistence.dir/flags.make

src/persistence/CMakeFiles/persistence.dir/src/persistence.cpp.o: src/persistence/CMakeFiles/persistence.dir/flags.make
src/persistence/CMakeFiles/persistence.dir/src/persistence.cpp.o: ../src/persistence/src/persistence.cpp
src/persistence/CMakeFiles/persistence.dir/src/persistence.cpp.o: src/persistence/CMakeFiles/persistence.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangwenzhe/learning_c++/selfdb/cpp-app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/persistence/CMakeFiles/persistence.dir/src/persistence.cpp.o"
	cd /home/zhangwenzhe/learning_c++/selfdb/cpp-app/build/src/persistence && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/persistence/CMakeFiles/persistence.dir/src/persistence.cpp.o -MF CMakeFiles/persistence.dir/src/persistence.cpp.o.d -o CMakeFiles/persistence.dir/src/persistence.cpp.o -c /home/zhangwenzhe/learning_c++/selfdb/cpp-app/src/persistence/src/persistence.cpp

src/persistence/CMakeFiles/persistence.dir/src/persistence.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/persistence.dir/src/persistence.cpp.i"
	cd /home/zhangwenzhe/learning_c++/selfdb/cpp-app/build/src/persistence && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhangwenzhe/learning_c++/selfdb/cpp-app/src/persistence/src/persistence.cpp > CMakeFiles/persistence.dir/src/persistence.cpp.i

src/persistence/CMakeFiles/persistence.dir/src/persistence.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/persistence.dir/src/persistence.cpp.s"
	cd /home/zhangwenzhe/learning_c++/selfdb/cpp-app/build/src/persistence && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhangwenzhe/learning_c++/selfdb/cpp-app/src/persistence/src/persistence.cpp -o CMakeFiles/persistence.dir/src/persistence.cpp.s

# Object files for target persistence
persistence_OBJECTS = \
"CMakeFiles/persistence.dir/src/persistence.cpp.o"

# External object files for target persistence
persistence_EXTERNAL_OBJECTS =

src/persistence/libpersistence.a: src/persistence/CMakeFiles/persistence.dir/src/persistence.cpp.o
src/persistence/libpersistence.a: src/persistence/CMakeFiles/persistence.dir/build.make
src/persistence/libpersistence.a: src/persistence/CMakeFiles/persistence.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhangwenzhe/learning_c++/selfdb/cpp-app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libpersistence.a"
	cd /home/zhangwenzhe/learning_c++/selfdb/cpp-app/build/src/persistence && $(CMAKE_COMMAND) -P CMakeFiles/persistence.dir/cmake_clean_target.cmake
	cd /home/zhangwenzhe/learning_c++/selfdb/cpp-app/build/src/persistence && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/persistence.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/persistence/CMakeFiles/persistence.dir/build: src/persistence/libpersistence.a
.PHONY : src/persistence/CMakeFiles/persistence.dir/build

src/persistence/CMakeFiles/persistence.dir/clean:
	cd /home/zhangwenzhe/learning_c++/selfdb/cpp-app/build/src/persistence && $(CMAKE_COMMAND) -P CMakeFiles/persistence.dir/cmake_clean.cmake
.PHONY : src/persistence/CMakeFiles/persistence.dir/clean

src/persistence/CMakeFiles/persistence.dir/depend:
	cd /home/zhangwenzhe/learning_c++/selfdb/cpp-app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhangwenzhe/learning_c++/selfdb/cpp-app /home/zhangwenzhe/learning_c++/selfdb/cpp-app/src/persistence /home/zhangwenzhe/learning_c++/selfdb/cpp-app/build /home/zhangwenzhe/learning_c++/selfdb/cpp-app/build/src/persistence /home/zhangwenzhe/learning_c++/selfdb/cpp-app/build/src/persistence/CMakeFiles/persistence.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/persistence/CMakeFiles/persistence.dir/depend


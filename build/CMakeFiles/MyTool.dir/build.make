# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/axelbrx/Développement/Unreal-GUI-Tool

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/axelbrx/Développement/Unreal-GUI-Tool/build

# Include any dependencies generated for this target.
include CMakeFiles/MyTool.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/MyTool.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/MyTool.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MyTool.dir/flags.make

CMakeFiles/MyTool.dir/codegen:
.PHONY : CMakeFiles/MyTool.dir/codegen

CMakeFiles/MyTool.dir/src/main.cpp.o: CMakeFiles/MyTool.dir/flags.make
CMakeFiles/MyTool.dir/src/main.cpp.o: /Users/axelbrx/Développement/Unreal-GUI-Tool/src/main.cpp
CMakeFiles/MyTool.dir/src/main.cpp.o: CMakeFiles/MyTool.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/axelbrx/Développement/Unreal-GUI-Tool/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MyTool.dir/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyTool.dir/src/main.cpp.o -MF CMakeFiles/MyTool.dir/src/main.cpp.o.d -o CMakeFiles/MyTool.dir/src/main.cpp.o -c /Users/axelbrx/Développement/Unreal-GUI-Tool/src/main.cpp

CMakeFiles/MyTool.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MyTool.dir/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/axelbrx/Développement/Unreal-GUI-Tool/src/main.cpp > CMakeFiles/MyTool.dir/src/main.cpp.i

CMakeFiles/MyTool.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MyTool.dir/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/axelbrx/Développement/Unreal-GUI-Tool/src/main.cpp -o CMakeFiles/MyTool.dir/src/main.cpp.s

CMakeFiles/MyTool.dir/src/UProjectParser.cpp.o: CMakeFiles/MyTool.dir/flags.make
CMakeFiles/MyTool.dir/src/UProjectParser.cpp.o: /Users/axelbrx/Développement/Unreal-GUI-Tool/src/UProjectParser.cpp
CMakeFiles/MyTool.dir/src/UProjectParser.cpp.o: CMakeFiles/MyTool.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/axelbrx/Développement/Unreal-GUI-Tool/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/MyTool.dir/src/UProjectParser.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyTool.dir/src/UProjectParser.cpp.o -MF CMakeFiles/MyTool.dir/src/UProjectParser.cpp.o.d -o CMakeFiles/MyTool.dir/src/UProjectParser.cpp.o -c /Users/axelbrx/Développement/Unreal-GUI-Tool/src/UProjectParser.cpp

CMakeFiles/MyTool.dir/src/UProjectParser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MyTool.dir/src/UProjectParser.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/axelbrx/Développement/Unreal-GUI-Tool/src/UProjectParser.cpp > CMakeFiles/MyTool.dir/src/UProjectParser.cpp.i

CMakeFiles/MyTool.dir/src/UProjectParser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MyTool.dir/src/UProjectParser.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/axelbrx/Développement/Unreal-GUI-Tool/src/UProjectParser.cpp -o CMakeFiles/MyTool.dir/src/UProjectParser.cpp.s

CMakeFiles/MyTool.dir/src/BuildManager.cpp.o: CMakeFiles/MyTool.dir/flags.make
CMakeFiles/MyTool.dir/src/BuildManager.cpp.o: /Users/axelbrx/Développement/Unreal-GUI-Tool/src/BuildManager.cpp
CMakeFiles/MyTool.dir/src/BuildManager.cpp.o: CMakeFiles/MyTool.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/axelbrx/Développement/Unreal-GUI-Tool/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/MyTool.dir/src/BuildManager.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyTool.dir/src/BuildManager.cpp.o -MF CMakeFiles/MyTool.dir/src/BuildManager.cpp.o.d -o CMakeFiles/MyTool.dir/src/BuildManager.cpp.o -c /Users/axelbrx/Développement/Unreal-GUI-Tool/src/BuildManager.cpp

CMakeFiles/MyTool.dir/src/BuildManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MyTool.dir/src/BuildManager.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/axelbrx/Développement/Unreal-GUI-Tool/src/BuildManager.cpp > CMakeFiles/MyTool.dir/src/BuildManager.cpp.i

CMakeFiles/MyTool.dir/src/BuildManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MyTool.dir/src/BuildManager.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/axelbrx/Développement/Unreal-GUI-Tool/src/BuildManager.cpp -o CMakeFiles/MyTool.dir/src/BuildManager.cpp.s

CMakeFiles/MyTool.dir/src/PackageManager.cpp.o: CMakeFiles/MyTool.dir/flags.make
CMakeFiles/MyTool.dir/src/PackageManager.cpp.o: /Users/axelbrx/Développement/Unreal-GUI-Tool/src/PackageManager.cpp
CMakeFiles/MyTool.dir/src/PackageManager.cpp.o: CMakeFiles/MyTool.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/axelbrx/Développement/Unreal-GUI-Tool/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/MyTool.dir/src/PackageManager.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyTool.dir/src/PackageManager.cpp.o -MF CMakeFiles/MyTool.dir/src/PackageManager.cpp.o.d -o CMakeFiles/MyTool.dir/src/PackageManager.cpp.o -c /Users/axelbrx/Développement/Unreal-GUI-Tool/src/PackageManager.cpp

CMakeFiles/MyTool.dir/src/PackageManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MyTool.dir/src/PackageManager.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/axelbrx/Développement/Unreal-GUI-Tool/src/PackageManager.cpp > CMakeFiles/MyTool.dir/src/PackageManager.cpp.i

CMakeFiles/MyTool.dir/src/PackageManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MyTool.dir/src/PackageManager.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/axelbrx/Développement/Unreal-GUI-Tool/src/PackageManager.cpp -o CMakeFiles/MyTool.dir/src/PackageManager.cpp.s

# Object files for target MyTool
MyTool_OBJECTS = \
"CMakeFiles/MyTool.dir/src/main.cpp.o" \
"CMakeFiles/MyTool.dir/src/UProjectParser.cpp.o" \
"CMakeFiles/MyTool.dir/src/BuildManager.cpp.o" \
"CMakeFiles/MyTool.dir/src/PackageManager.cpp.o"

# External object files for target MyTool
MyTool_EXTERNAL_OBJECTS =

MyTool: CMakeFiles/MyTool.dir/src/main.cpp.o
MyTool: CMakeFiles/MyTool.dir/src/UProjectParser.cpp.o
MyTool: CMakeFiles/MyTool.dir/src/BuildManager.cpp.o
MyTool: CMakeFiles/MyTool.dir/src/PackageManager.cpp.o
MyTool: CMakeFiles/MyTool.dir/build.make
MyTool: CMakeFiles/MyTool.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/axelbrx/Développement/Unreal-GUI-Tool/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable MyTool"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MyTool.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MyTool.dir/build: MyTool
.PHONY : CMakeFiles/MyTool.dir/build

CMakeFiles/MyTool.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MyTool.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MyTool.dir/clean

CMakeFiles/MyTool.dir/depend:
	cd /Users/axelbrx/Développement/Unreal-GUI-Tool/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/axelbrx/Développement/Unreal-GUI-Tool /Users/axelbrx/Développement/Unreal-GUI-Tool /Users/axelbrx/Développement/Unreal-GUI-Tool/build /Users/axelbrx/Développement/Unreal-GUI-Tool/build /Users/axelbrx/Développement/Unreal-GUI-Tool/build/CMakeFiles/MyTool.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/MyTool.dir/depend


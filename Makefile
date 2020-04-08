# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/stuv/projects/programming/bsEdit

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stuv/projects/programming/bsEdit

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/local/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/local/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/local/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/local/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components

.PHONY : list_install_components/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/local/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/local/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/local/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/stuv/projects/programming/bsEdit/CMakeFiles /home/stuv/projects/programming/bsEdit/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/stuv/projects/programming/bsEdit/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named external_eigen

# Build rule for target.
external_eigen: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 external_eigen
.PHONY : external_eigen

# fast build rule for target.
external_eigen/fast:
	$(MAKE) -f CMakeFiles/external_eigen.dir/build.make CMakeFiles/external_eigen.dir/build
.PHONY : external_eigen/fast

#=============================================================================
# Target rules for targets named LIB_CPPFLAGS_EXAMPLE_BASIC

# Build rule for target.
LIB_CPPFLAGS_EXAMPLE_BASIC: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 LIB_CPPFLAGS_EXAMPLE_BASIC
.PHONY : LIB_CPPFLAGS_EXAMPLE_BASIC

# fast build rule for target.
LIB_CPPFLAGS_EXAMPLE_BASIC/fast:
	$(MAKE) -f CMakeFiles/LIB_CPPFLAGS_EXAMPLE_BASIC.dir/build.make CMakeFiles/LIB_CPPFLAGS_EXAMPLE_BASIC.dir/build
.PHONY : LIB_CPPFLAGS_EXAMPLE_BASIC/fast

#=============================================================================
# Target rules for targets named external_boost

# Build rule for target.
external_boost: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 external_boost
.PHONY : external_boost

# fast build rule for target.
external_boost/fast:
	$(MAKE) -f CMakeFiles/external_boost.dir/build.make CMakeFiles/external_boost.dir/build
.PHONY : external_boost/fast

#=============================================================================
# Target rules for targets named external_cppflags

# Build rule for target.
external_cppflags: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 external_cppflags
.PHONY : external_cppflags

# fast build rule for target.
external_cppflags/fast:
	$(MAKE) -f CMakeFiles/external_cppflags.dir/build.make CMakeFiles/external_cppflags.dir/build
.PHONY : external_cppflags/fast

#=============================================================================
# Target rules for targets named LIB_GLAD_EXAMPLE_CBASIC

# Build rule for target.
LIB_GLAD_EXAMPLE_CBASIC: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 LIB_GLAD_EXAMPLE_CBASIC
.PHONY : LIB_GLAD_EXAMPLE_CBASIC

# fast build rule for target.
LIB_GLAD_EXAMPLE_CBASIC/fast:
	$(MAKE) -f CMakeFiles/LIB_GLAD_EXAMPLE_CBASIC.dir/build.make CMakeFiles/LIB_GLAD_EXAMPLE_CBASIC.dir/build
.PHONY : LIB_GLAD_EXAMPLE_CBASIC/fast

#=============================================================================
# Target rules for targets named external_glad

# Build rule for target.
external_glad: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 external_glad
.PHONY : external_glad

# fast build rule for target.
external_glad/fast:
	$(MAKE) -f CMakeFiles/external_glad.dir/build.make CMakeFiles/external_glad.dir/build
.PHONY : external_glad/fast

#=============================================================================
# Target rules for targets named LIB_EIGEN_EXAMPLE_BASIC

# Build rule for target.
LIB_EIGEN_EXAMPLE_BASIC: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 LIB_EIGEN_EXAMPLE_BASIC
.PHONY : LIB_EIGEN_EXAMPLE_BASIC

# fast build rule for target.
LIB_EIGEN_EXAMPLE_BASIC/fast:
	$(MAKE) -f CMakeFiles/LIB_EIGEN_EXAMPLE_BASIC.dir/build.make CMakeFiles/LIB_EIGEN_EXAMPLE_BASIC.dir/build
.PHONY : LIB_EIGEN_EXAMPLE_BASIC/fast

#=============================================================================
# Target rules for targets named external_python

# Build rule for target.
external_python: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 external_python
.PHONY : external_python

# fast build rule for target.
external_python/fast:
	$(MAKE) -f CMakeFiles/external_python.dir/build.make CMakeFiles/external_python.dir/build
.PHONY : external_python/fast

#=============================================================================
# Target rules for targets named BSEDIT

# Build rule for target.
BSEDIT: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 BSEDIT
.PHONY : BSEDIT

# fast build rule for target.
BSEDIT/fast:
	$(MAKE) -f CMakeFiles/BSEDIT.dir/build.make CMakeFiles/BSEDIT.dir/build
.PHONY : BSEDIT/fast

#=============================================================================
# Target rules for targets named LIB_PYTHON_EXAMPLE_BASIC

# Build rule for target.
LIB_PYTHON_EXAMPLE_BASIC: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 LIB_PYTHON_EXAMPLE_BASIC
.PHONY : LIB_PYTHON_EXAMPLE_BASIC

# fast build rule for target.
LIB_PYTHON_EXAMPLE_BASIC/fast:
	$(MAKE) -f CMakeFiles/LIB_PYTHON_EXAMPLE_BASIC.dir/build.make CMakeFiles/LIB_PYTHON_EXAMPLE_BASIC.dir/build
.PHONY : LIB_PYTHON_EXAMPLE_BASIC/fast

#=============================================================================
# Target rules for targets named external_glfw

# Build rule for target.
external_glfw: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 external_glfw
.PHONY : external_glfw

# fast build rule for target.
external_glfw/fast:
	$(MAKE) -f CMakeFiles/external_glfw.dir/build.make CMakeFiles/external_glfw.dir/build
.PHONY : external_glfw/fast

#=============================================================================
# Target rules for targets named LIB_GLFW_EXAMPLE_CBASIC

# Build rule for target.
LIB_GLFW_EXAMPLE_CBASIC: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 LIB_GLFW_EXAMPLE_CBASIC
.PHONY : LIB_GLFW_EXAMPLE_CBASIC

# fast build rule for target.
LIB_GLFW_EXAMPLE_CBASIC/fast:
	$(MAKE) -f CMakeFiles/LIB_GLFW_EXAMPLE_CBASIC.dir/build.make CMakeFiles/LIB_GLFW_EXAMPLE_CBASIC.dir/build
.PHONY : LIB_GLFW_EXAMPLE_CBASIC/fast

#=============================================================================
# Target rules for targets named external_nlohmannjson

# Build rule for target.
external_nlohmannjson: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 external_nlohmannjson
.PHONY : external_nlohmannjson

# fast build rule for target.
external_nlohmannjson/fast:
	$(MAKE) -f CMakeFiles/external_nlohmannjson.dir/build.make CMakeFiles/external_nlohmannjson.dir/build
.PHONY : external_nlohmannjson/fast

#=============================================================================
# Target rules for targets named LIB_NLOHMANNJSON_EXAMPLE_BASIC

# Build rule for target.
LIB_NLOHMANNJSON_EXAMPLE_BASIC: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 LIB_NLOHMANNJSON_EXAMPLE_BASIC
.PHONY : LIB_NLOHMANNJSON_EXAMPLE_BASIC

# fast build rule for target.
LIB_NLOHMANNJSON_EXAMPLE_BASIC/fast:
	$(MAKE) -f CMakeFiles/LIB_NLOHMANNJSON_EXAMPLE_BASIC.dir/build.make CMakeFiles/LIB_NLOHMANNJSON_EXAMPLE_BASIC.dir/build
.PHONY : LIB_NLOHMANNJSON_EXAMPLE_BASIC/fast

#=============================================================================
# Target rules for targets named LIB_BOOST_EXAMPLE_PYTHON

# Build rule for target.
LIB_BOOST_EXAMPLE_PYTHON: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 LIB_BOOST_EXAMPLE_PYTHON
.PHONY : LIB_BOOST_EXAMPLE_PYTHON

# fast build rule for target.
LIB_BOOST_EXAMPLE_PYTHON/fast:
	$(MAKE) -f CMakeFiles/LIB_BOOST_EXAMPLE_PYTHON.dir/build.make CMakeFiles/LIB_BOOST_EXAMPLE_PYTHON.dir/build
.PHONY : LIB_BOOST_EXAMPLE_PYTHON/fast

src/bsEdit/bsEdit.o: src/bsEdit/bsEdit.cpp.o

.PHONY : src/bsEdit/bsEdit.o

# target to build an object file
src/bsEdit/bsEdit.cpp.o:
	$(MAKE) -f CMakeFiles/BSEDIT.dir/build.make CMakeFiles/BSEDIT.dir/src/bsEdit/bsEdit.cpp.o
.PHONY : src/bsEdit/bsEdit.cpp.o

src/bsEdit/bsEdit.i: src/bsEdit/bsEdit.cpp.i

.PHONY : src/bsEdit/bsEdit.i

# target to preprocess a source file
src/bsEdit/bsEdit.cpp.i:
	$(MAKE) -f CMakeFiles/BSEDIT.dir/build.make CMakeFiles/BSEDIT.dir/src/bsEdit/bsEdit.cpp.i
.PHONY : src/bsEdit/bsEdit.cpp.i

src/bsEdit/bsEdit.s: src/bsEdit/bsEdit.cpp.s

.PHONY : src/bsEdit/bsEdit.s

# target to generate assembly for a file
src/bsEdit/bsEdit.cpp.s:
	$(MAKE) -f CMakeFiles/BSEDIT.dir/build.make CMakeFiles/BSEDIT.dir/src/bsEdit/bsEdit.cpp.s
.PHONY : src/bsEdit/bsEdit.cpp.s

src/examples/boost/python/boost_python.o: src/examples/boost/python/boost_python.cpp.o

.PHONY : src/examples/boost/python/boost_python.o

# target to build an object file
src/examples/boost/python/boost_python.cpp.o:
	$(MAKE) -f CMakeFiles/LIB_BOOST_EXAMPLE_PYTHON.dir/build.make CMakeFiles/LIB_BOOST_EXAMPLE_PYTHON.dir/src/examples/boost/python/boost_python.cpp.o
.PHONY : src/examples/boost/python/boost_python.cpp.o

src/examples/boost/python/boost_python.i: src/examples/boost/python/boost_python.cpp.i

.PHONY : src/examples/boost/python/boost_python.i

# target to preprocess a source file
src/examples/boost/python/boost_python.cpp.i:
	$(MAKE) -f CMakeFiles/LIB_BOOST_EXAMPLE_PYTHON.dir/build.make CMakeFiles/LIB_BOOST_EXAMPLE_PYTHON.dir/src/examples/boost/python/boost_python.cpp.i
.PHONY : src/examples/boost/python/boost_python.cpp.i

src/examples/boost/python/boost_python.s: src/examples/boost/python/boost_python.cpp.s

.PHONY : src/examples/boost/python/boost_python.s

# target to generate assembly for a file
src/examples/boost/python/boost_python.cpp.s:
	$(MAKE) -f CMakeFiles/LIB_BOOST_EXAMPLE_PYTHON.dir/build.make CMakeFiles/LIB_BOOST_EXAMPLE_PYTHON.dir/src/examples/boost/python/boost_python.cpp.s
.PHONY : src/examples/boost/python/boost_python.cpp.s

src/examples/cppflags/cppflags.o: src/examples/cppflags/cppflags.cpp.o

.PHONY : src/examples/cppflags/cppflags.o

# target to build an object file
src/examples/cppflags/cppflags.cpp.o:
	$(MAKE) -f CMakeFiles/LIB_CPPFLAGS_EXAMPLE_BASIC.dir/build.make CMakeFiles/LIB_CPPFLAGS_EXAMPLE_BASIC.dir/src/examples/cppflags/cppflags.cpp.o
.PHONY : src/examples/cppflags/cppflags.cpp.o

src/examples/cppflags/cppflags.i: src/examples/cppflags/cppflags.cpp.i

.PHONY : src/examples/cppflags/cppflags.i

# target to preprocess a source file
src/examples/cppflags/cppflags.cpp.i:
	$(MAKE) -f CMakeFiles/LIB_CPPFLAGS_EXAMPLE_BASIC.dir/build.make CMakeFiles/LIB_CPPFLAGS_EXAMPLE_BASIC.dir/src/examples/cppflags/cppflags.cpp.i
.PHONY : src/examples/cppflags/cppflags.cpp.i

src/examples/cppflags/cppflags.s: src/examples/cppflags/cppflags.cpp.s

.PHONY : src/examples/cppflags/cppflags.s

# target to generate assembly for a file
src/examples/cppflags/cppflags.cpp.s:
	$(MAKE) -f CMakeFiles/LIB_CPPFLAGS_EXAMPLE_BASIC.dir/build.make CMakeFiles/LIB_CPPFLAGS_EXAMPLE_BASIC.dir/src/examples/cppflags/cppflags.cpp.s
.PHONY : src/examples/cppflags/cppflags.cpp.s

src/examples/eigen/basic/eigen_basic.o: src/examples/eigen/basic/eigen_basic.cpp.o

.PHONY : src/examples/eigen/basic/eigen_basic.o

# target to build an object file
src/examples/eigen/basic/eigen_basic.cpp.o:
	$(MAKE) -f CMakeFiles/LIB_EIGEN_EXAMPLE_BASIC.dir/build.make CMakeFiles/LIB_EIGEN_EXAMPLE_BASIC.dir/src/examples/eigen/basic/eigen_basic.cpp.o
.PHONY : src/examples/eigen/basic/eigen_basic.cpp.o

src/examples/eigen/basic/eigen_basic.i: src/examples/eigen/basic/eigen_basic.cpp.i

.PHONY : src/examples/eigen/basic/eigen_basic.i

# target to preprocess a source file
src/examples/eigen/basic/eigen_basic.cpp.i:
	$(MAKE) -f CMakeFiles/LIB_EIGEN_EXAMPLE_BASIC.dir/build.make CMakeFiles/LIB_EIGEN_EXAMPLE_BASIC.dir/src/examples/eigen/basic/eigen_basic.cpp.i
.PHONY : src/examples/eigen/basic/eigen_basic.cpp.i

src/examples/eigen/basic/eigen_basic.s: src/examples/eigen/basic/eigen_basic.cpp.s

.PHONY : src/examples/eigen/basic/eigen_basic.s

# target to generate assembly for a file
src/examples/eigen/basic/eigen_basic.cpp.s:
	$(MAKE) -f CMakeFiles/LIB_EIGEN_EXAMPLE_BASIC.dir/build.make CMakeFiles/LIB_EIGEN_EXAMPLE_BASIC.dir/src/examples/eigen/basic/eigen_basic.cpp.s
.PHONY : src/examples/eigen/basic/eigen_basic.cpp.s

src/examples/glad/basic/basic.o: src/examples/glad/basic/basic.c.o

.PHONY : src/examples/glad/basic/basic.o

# target to build an object file
src/examples/glad/basic/basic.c.o:
	$(MAKE) -f CMakeFiles/LIB_GLAD_EXAMPLE_CBASIC.dir/build.make CMakeFiles/LIB_GLAD_EXAMPLE_CBASIC.dir/src/examples/glad/basic/basic.c.o
.PHONY : src/examples/glad/basic/basic.c.o

src/examples/glad/basic/basic.i: src/examples/glad/basic/basic.c.i

.PHONY : src/examples/glad/basic/basic.i

# target to preprocess a source file
src/examples/glad/basic/basic.c.i:
	$(MAKE) -f CMakeFiles/LIB_GLAD_EXAMPLE_CBASIC.dir/build.make CMakeFiles/LIB_GLAD_EXAMPLE_CBASIC.dir/src/examples/glad/basic/basic.c.i
.PHONY : src/examples/glad/basic/basic.c.i

src/examples/glad/basic/basic.s: src/examples/glad/basic/basic.c.s

.PHONY : src/examples/glad/basic/basic.s

# target to generate assembly for a file
src/examples/glad/basic/basic.c.s:
	$(MAKE) -f CMakeFiles/LIB_GLAD_EXAMPLE_CBASIC.dir/build.make CMakeFiles/LIB_GLAD_EXAMPLE_CBASIC.dir/src/examples/glad/basic/basic.c.s
.PHONY : src/examples/glad/basic/basic.c.s

src/examples/glfw/cbasic/glfw-init.o: src/examples/glfw/cbasic/glfw-init.c.o

.PHONY : src/examples/glfw/cbasic/glfw-init.o

# target to build an object file
src/examples/glfw/cbasic/glfw-init.c.o:
	$(MAKE) -f CMakeFiles/LIB_GLFW_EXAMPLE_CBASIC.dir/build.make CMakeFiles/LIB_GLFW_EXAMPLE_CBASIC.dir/src/examples/glfw/cbasic/glfw-init.c.o
.PHONY : src/examples/glfw/cbasic/glfw-init.c.o

src/examples/glfw/cbasic/glfw-init.i: src/examples/glfw/cbasic/glfw-init.c.i

.PHONY : src/examples/glfw/cbasic/glfw-init.i

# target to preprocess a source file
src/examples/glfw/cbasic/glfw-init.c.i:
	$(MAKE) -f CMakeFiles/LIB_GLFW_EXAMPLE_CBASIC.dir/build.make CMakeFiles/LIB_GLFW_EXAMPLE_CBASIC.dir/src/examples/glfw/cbasic/glfw-init.c.i
.PHONY : src/examples/glfw/cbasic/glfw-init.c.i

src/examples/glfw/cbasic/glfw-init.s: src/examples/glfw/cbasic/glfw-init.c.s

.PHONY : src/examples/glfw/cbasic/glfw-init.s

# target to generate assembly for a file
src/examples/glfw/cbasic/glfw-init.c.s:
	$(MAKE) -f CMakeFiles/LIB_GLFW_EXAMPLE_CBASIC.dir/build.make CMakeFiles/LIB_GLFW_EXAMPLE_CBASIC.dir/src/examples/glfw/cbasic/glfw-init.c.s
.PHONY : src/examples/glfw/cbasic/glfw-init.c.s

src/examples/nlohmannjson/basic/nlohmann_json.o: src/examples/nlohmannjson/basic/nlohmann_json.cpp.o

.PHONY : src/examples/nlohmannjson/basic/nlohmann_json.o

# target to build an object file
src/examples/nlohmannjson/basic/nlohmann_json.cpp.o:
	$(MAKE) -f CMakeFiles/LIB_NLOHMANNJSON_EXAMPLE_BASIC.dir/build.make CMakeFiles/LIB_NLOHMANNJSON_EXAMPLE_BASIC.dir/src/examples/nlohmannjson/basic/nlohmann_json.cpp.o
.PHONY : src/examples/nlohmannjson/basic/nlohmann_json.cpp.o

src/examples/nlohmannjson/basic/nlohmann_json.i: src/examples/nlohmannjson/basic/nlohmann_json.cpp.i

.PHONY : src/examples/nlohmannjson/basic/nlohmann_json.i

# target to preprocess a source file
src/examples/nlohmannjson/basic/nlohmann_json.cpp.i:
	$(MAKE) -f CMakeFiles/LIB_NLOHMANNJSON_EXAMPLE_BASIC.dir/build.make CMakeFiles/LIB_NLOHMANNJSON_EXAMPLE_BASIC.dir/src/examples/nlohmannjson/basic/nlohmann_json.cpp.i
.PHONY : src/examples/nlohmannjson/basic/nlohmann_json.cpp.i

src/examples/nlohmannjson/basic/nlohmann_json.s: src/examples/nlohmannjson/basic/nlohmann_json.cpp.s

.PHONY : src/examples/nlohmannjson/basic/nlohmann_json.s

# target to generate assembly for a file
src/examples/nlohmannjson/basic/nlohmann_json.cpp.s:
	$(MAKE) -f CMakeFiles/LIB_NLOHMANNJSON_EXAMPLE_BASIC.dir/build.make CMakeFiles/LIB_NLOHMANNJSON_EXAMPLE_BASIC.dir/src/examples/nlohmannjson/basic/nlohmann_json.cpp.s
.PHONY : src/examples/nlohmannjson/basic/nlohmann_json.cpp.s

src/examples/python/basic/python_basic.o: src/examples/python/basic/python_basic.c.o

.PHONY : src/examples/python/basic/python_basic.o

# target to build an object file
src/examples/python/basic/python_basic.c.o:
	$(MAKE) -f CMakeFiles/LIB_PYTHON_EXAMPLE_BASIC.dir/build.make CMakeFiles/LIB_PYTHON_EXAMPLE_BASIC.dir/src/examples/python/basic/python_basic.c.o
.PHONY : src/examples/python/basic/python_basic.c.o

src/examples/python/basic/python_basic.i: src/examples/python/basic/python_basic.c.i

.PHONY : src/examples/python/basic/python_basic.i

# target to preprocess a source file
src/examples/python/basic/python_basic.c.i:
	$(MAKE) -f CMakeFiles/LIB_PYTHON_EXAMPLE_BASIC.dir/build.make CMakeFiles/LIB_PYTHON_EXAMPLE_BASIC.dir/src/examples/python/basic/python_basic.c.i
.PHONY : src/examples/python/basic/python_basic.c.i

src/examples/python/basic/python_basic.s: src/examples/python/basic/python_basic.c.s

.PHONY : src/examples/python/basic/python_basic.s

# target to generate assembly for a file
src/examples/python/basic/python_basic.c.s:
	$(MAKE) -f CMakeFiles/LIB_PYTHON_EXAMPLE_BASIC.dir/build.make CMakeFiles/LIB_PYTHON_EXAMPLE_BASIC.dir/src/examples/python/basic/python_basic.c.s
.PHONY : src/examples/python/basic/python_basic.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... install/local"
	@echo "... install"
	@echo "... external_eigen"
	@echo "... LIB_CPPFLAGS_EXAMPLE_BASIC"
	@echo "... list_install_components"
	@echo "... external_boost"
	@echo "... external_cppflags"
	@echo "... LIB_GLAD_EXAMPLE_CBASIC"
	@echo "... external_glad"
	@echo "... LIB_EIGEN_EXAMPLE_BASIC"
	@echo "... external_python"
	@echo "... BSEDIT"
	@echo "... LIB_PYTHON_EXAMPLE_BASIC"
	@echo "... external_glfw"
	@echo "... rebuild_cache"
	@echo "... LIB_GLFW_EXAMPLE_CBASIC"
	@echo "... external_nlohmannjson"
	@echo "... install/strip"
	@echo "... LIB_NLOHMANNJSON_EXAMPLE_BASIC"
	@echo "... LIB_BOOST_EXAMPLE_PYTHON"
	@echo "... edit_cache"
	@echo "... src/bsEdit/bsEdit.o"
	@echo "... src/bsEdit/bsEdit.i"
	@echo "... src/bsEdit/bsEdit.s"
	@echo "... src/examples/boost/python/boost_python.o"
	@echo "... src/examples/boost/python/boost_python.i"
	@echo "... src/examples/boost/python/boost_python.s"
	@echo "... src/examples/cppflags/cppflags.o"
	@echo "... src/examples/cppflags/cppflags.i"
	@echo "... src/examples/cppflags/cppflags.s"
	@echo "... src/examples/eigen/basic/eigen_basic.o"
	@echo "... src/examples/eigen/basic/eigen_basic.i"
	@echo "... src/examples/eigen/basic/eigen_basic.s"
	@echo "... src/examples/glad/basic/basic.o"
	@echo "... src/examples/glad/basic/basic.i"
	@echo "... src/examples/glad/basic/basic.s"
	@echo "... src/examples/glfw/cbasic/glfw-init.o"
	@echo "... src/examples/glfw/cbasic/glfw-init.i"
	@echo "... src/examples/glfw/cbasic/glfw-init.s"
	@echo "... src/examples/nlohmannjson/basic/nlohmann_json.o"
	@echo "... src/examples/nlohmannjson/basic/nlohmann_json.i"
	@echo "... src/examples/nlohmannjson/basic/nlohmann_json.s"
	@echo "... src/examples/python/basic/python_basic.o"
	@echo "... src/examples/python/basic/python_basic.i"
	@echo "... src/examples/python/basic/python_basic.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system


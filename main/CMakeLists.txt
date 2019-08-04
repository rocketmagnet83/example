#[[

 \Author: Steven Truppe
 \Copyright: Copyright (c) 2019 - 2029 by Steven Truppe

 This is the main entry point of the compilation system for Unix, Windows and MacOSX. Everything is build
 from this file.

]]
cmake_minimum_required(VERSION 3.14 FATAL_ERROR)
project(main)

####################################
## INCLUDE NECESSARY .CMAKE FILES ##
####################################
set(CMAKE_EXPORT_COMPILE_COMMANDS 1)
#set(OpenGL_GL_PREFERENCE CACHE STRING "LEGACY")

include(ExternalProject)
include(CMakePrintHelpers)
#####################################################
## These are the settings for the main appliaction ##
#####################################################
set(BSEDIT_INC_PATH			 "" CACHE PATH "Include directories for all supported libraries.")
set(BSEDIT_LIB_PATH			 "" CACHE PATH "Library directories for all supported libraries.")
set(BSEDIT_STATIC_LIBS		 "" CACHE STRING "All static libraries to link with.")
set(BSEDIT_SHARED_LIBS		 "" CACHE STRING "All shared libraries to link with.")
set(BSEDIT_DEPS				 "" CACHE STRING "All external dependencies to link with.")
set(BSEDIT_CXX_FLAGS_RELEASE "" CACHE STRING "The release C++ compiler flags for the main application.")
set(BSEDIT_CXX_FLAGS_DEBUG	 "" CACHE STRING "The debug C++ compiler flags for the main application.")
set(BSEDIT_DEBUG_NAME	 "" CACHE STRING "The debug name of the final executable.")
set(BSEDIT_RELEASE_NAME  "" CACHE STRING "The release name of the final executable.")
set(BSEDIT_INSTALL_PATH		 "${CMAKE_SOURCE_DIR}/build_files/install" CACHE STRING "The base install directory of the application.")

set(BSEDIT_CXX_STANDARD_REQUIRED True)
set(BSEDIT_CXX_STANDARD 11)
set(BSEDIT_CXX_COMPILER g++)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/../tools/cmake/)
list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/../tools/cmake/modules)

cmake_print_variables(CMAKE_MODULE_PATH)
###############################
## Set path for find_package ##
###############################
list(APPEND CMAKE_INSTALL_PREFIX ${OUTPUT_PATH})


include(tools)
include(versions)
include(options)

bsBuildExamples(${LIBS_TO_BUILD})



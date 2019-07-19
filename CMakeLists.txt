#[[

 \Author: Steven Truppe
 \Copyright: Copyright (c) 2019 - 2029 by Steven Truppe

 This is the main entry point of the compilation system for Unix, Windows and MacOSX. Everything is build
 from this file.

]]
cmake_minimum_required(VERSION 3.14 FATAL_ERROR)

project(bsEdit)

####################################
## INCLUDE NECESSARY .CMAKE FILES ##
####################################
set(CMAKE_EXPORT_COMPILE_COMMANDS 1)
set(OpenGL_GL_PREFERENCE CACHE STRING "LEGACY")
include(ExternalProject)
include(CMakePrintHelpers)
include(ProcessorCount)
ProcessorCount(CPU_COUNT)
message(DEBUG "Number of CPU cores found : ${CPU_COUNT}")


####################################################
## Set a default build type if none was specified ##
####################################################
set(default_build_type "Release")
 
if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
  message(STATUS "Setting build type to '${default_build_type}' as none was specified.")
  set(CMAKE_BUILD_TYPE "${default_build_type}" CACHE STRING "Choose the type of build." FORCE)
  # Set the possible values of build type for cmake-gui
  set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS
    "Debug" "Release" "MinSizeRel" "RelWithDebInfo")
endif()

if(MSVC)
	# global compile definitions since add_definitions() adds for all.
	set_property(DIRECTORY APPEND PROPERTY COMPILE_DEFINITIONS
		$<$<CONFIG:Debug>:DEBUG;_DEBUG;WITH_DEBUG>
		$<$<CONFIG:Release>:NDEBUG>
		$<$<CONFIG:MinSizeRel>:NDEBUG>
		$<$<CONFIG:RelWithDebInfo>:NDEBUG>
	)
ENDIF()

#######################
### SET MODULE PATH ###
#######################
list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/tools/cmake/)
list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/tools/cmake/modules)


#################
## SET OPTIONS ##
#################
include(versions)
include(tools)
include(options)


##################################################
### OUTPUT_PATH AND PLATFORM SPECIFIC VARIABLES ##
##################################################
IF(UNIX)
	include(platform_linux)
	IF(CMAKE_BUILD_TYPE STREQUAL "Release")
		message(STATUS "Creating a Linux Release build.")
		set(OUTPUT_PATH ${CMAKE_SOURCE_DIR}/out/Release CACHE PATH "The output directory for binaries")
	ELSE()
		set(OUTPUT_PATH ${CMAKE_SOURCE_DIR}/out/Debug CACHE PATH "The output directory for binaries")
		message(STATUS "Creating a Linux Debug build.")
	ENDIF()
ELSEIF(WIN32)
	message(FATAL_ERROR "Creating an Windows '$<CONFIG>' build.")
	include(platform_windows)
	IF(MSVC)
		set(OUTPUT_PATH ${CMAKE_SOURCE_DIR}/out/$<CONFIG>/)
	ENDIF(MSVC)

ELSEIF(APPLE)
	message(FATAL_ERROR "Creating an APPLE build.")
	include(platform_apple)
ENDIF()


set(CMAKE_PREFIX_PATH CACHE STRING ${OUTPUT_PATH})

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

#########################################
## Build the doxygen API documentation ##
#########################################
#bsBuildDocs()

###########################################################
## Get the git revision and time/date of the compilation ##
###########################################################
#bsGetBuildCompileDefinitions()

###############################################################
## Start the build process of the libraries and the examples ##
###############################################################
bsBuildLibs(${ALL_LIBS})

######################################
## TODO: Build the final executable ##
######################################


##bsBuildFinalApplication()

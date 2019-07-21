cmake_minimum_required(VERSION 3.14 FATAL_ERROR)
project(bsEdit)

################################
## Include basic cmake macros ##
################################
include(ExternalProject)
include(CMakePrintHelpers)
include(ProcessorCount)
ProcessorCount(CPU_COUNT)

####################################################
## Set a default build type if none was specified ##
####################################################
set(default_build_type "Release")
 
if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
  message(STATUS "Setting build type to '${default_build_type}' as none was specified.")
  set(CMAKE_BUILD_TYPE "${default_build_type}" CACHE STRING "Choose the build type." FORCE)
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
include(tools)
include(versions)
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


bsGetLibsToBuild(${LIBS_TO_BUILD})
bsBuildExternalProjects(${LIBS_TO_BUILD})

ExternalProject_Add(main
	SOURCE_DIR ${CMAKE_SOURCE_DIR}/main
	INSTALL_COMMAND ""
)

set(LIBS_TO_BUILD_EXTERNAL "")
foreach(tmp ${LIBS_TO_BUILD})
	list(APPEND LIBS_TO_BUILD_EXTERNAL external_${tmp})
endforeach()


set(CMAKE_C_COMPILER g++)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

set(BSEDIT_SRC ${CMAKE_SOURCE_DIR}/src/bsEdit.cpp)
add_executable(BSEDIT ${BSEDIT_SRC})
set_target_properties(BSEDIT PROPERTIES RELEASE_OUTPUT_NAME bsEdit)
set_target_properties(BSEDIT PROPERTIES DEBUG_OUTPUT_NAME bsEdit_d)

add_dependencies(${LIBS_TO_BUILD_EXTERNAL})
install(
	TARGETS BSEDIT
	RUNTIME DESTINATION ${OUTPUT_PATH}/main
)





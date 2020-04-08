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

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS TRUE)

#######################
### SET MODULE PATH ###
#######################
list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/tools/cmake/)
list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/tools/cmake/modules)


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
set(BSEDIT_SRC ${CMAKE_SOURCE_DIR}/src/bsEdit/bsEdit.cpp)

set(BSEDIT_CXX_STANDARD_REQUIRED True)
set(BSEDIT_CXX_STANDARD 11)
set(BSEDIT_CXX_COMPILER g++)


###############################
## Set path for find_package ##
###############################
set(CMAKE_INSTALL_PREFIX ${OUTPUT_PATH})


include(tools)
include(versions)
include(options)



bsGetLibsToBuild(${LIBS_TO_BUILD})
bsBuildExternalProjects(${LIBS_TO_BUILD})

#[[
ExternalProject_Add(main
	SOURCE_DIR ${CMAKE_SOURCE_DIR}/bsEdit
	INSTALL_COMMAND ""
)
]]

set(CMAKE_C_COMPILER g++)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

add_executable(BSEDIT ${BSEDIT_SRC})
set_target_properties(BSEDIT PROPERTIES RELEASE_OUTPUT_NAME bsEdit)
set_target_properties(BSEDIT PROPERTIES DEBUG_OUTPUT_NAME bsEdit_d)

#[[ set dependencies ]]
set(deps "")
foreach(v ${LIBS_TO_BUILD})
	string(TOLOWER ${v} v_lower)
	list(APPEND deps external_${v_lower})
endforeach()
cmake_print_variables(deps)

#[[ set inc path ]]
foreach(v ${LIBS_TO_BUILD})
	list(APPEND BSEDIT_INC_PATH ${LIB_${v}_INC_PATH})
endforeach()
target_include_directories(BSEDIT PRIVATE ${BSEDIT_INC_PATH})
list(REMOVE_DUPLICATES BSEDIT_INC_PATH)
message(STATUS "inc path for main application: ${BSEDIT_INC_PATH}")

#[ set lib path ]]
foreach(v ${LIBS_TO_BUILD})
	list(APPEND BSEDIT_LIB_PATH ${LIB_${v}_LIB_PATH})
endforeach()
target_link_directories(BSEDIT PRIVATE ${BSEDIT_LIB_PATH})
message(STATUS "inc path for main application: ${BSEDIT_LIB_PATH}")

#[[ set static and shared libs ]]
foreach(v ${LIBS_TO_BUILD})
	message(STATUS "${v} = ${LIB_${v}_STATIC_LIBS}")
	list(APPEND BSEDIT_STATIC_LIBS ${LIB_${v}_STATIC_LIBS})
	list(APPEND BSEDIT_SHARED_LIBS ${LIB_${v}_SHARED_LIBS})
	set(tmp "")
	list(APPEND tmp ${BSEDIT_STATIC_LIBS})
	list(APPEND tmp ${BSEDIT_SHARED_LIBS})
endforeach()
list(REMOVE_DUPLICATES tmp)
target_link_libraries(BSEDIT PRIVATE ${tmp})



add_dependencies(${deps})
install(
	TARGETS BSEDIT
	RUNTIME DESTINATION ${OUTPUT_PATH}/bsEdit
)





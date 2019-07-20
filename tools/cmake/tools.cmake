#################
## bsBuildLibs ##
#################
macro(bsBuildExternalProjects)
	foreach(lib ${ARGN})
		bsIncludeLib(${lib})
		bsGetLibExamples(${lib})
		bsBuildExamples(${lib})
	endforeach()
endmacro()

macro(bsBuildExamples)
	foreach(lib ${ARGN})
		bsIncludeLibExamples(${lib})
	endforeach()
endmacro()

##################
## bsIncludeLib ##
##################
macro(bsIncludeLib)
	message(STATUS "---> bsIncludeLib")
	set(fn "${CMAKE_SOURCE_DIR}/tools/cmake/modules/lib_${ARGV0}.cmake")
	if(EXISTS ${fn})
		include(lib_${ARGV0})
	else()
		message(FATAL_ERROR "Unable to find library configuration file: ${lib_${ARGV0}}!")
	endif()
endmacro()

######################
## bsGetLibExamples ##
######################
macro(bsGetLibExamples)
    string(TOUPPER ${lib} lib_upper)
	set(WITH_LIB_${lib_upper}_EXAMPLES "")
	# get all examples
	get_cmake_property(_vars VARIABLES)
	foreach(_var ${_vars})
		string(TOUPPER ${lib} lib_upper)
		if(_var MATCHES "^WITH_LIB_${lib_upper}_EXAMPLE_([A-Za-z]+)$")
			list(APPEND WITH_LIB_${lib_upper}_EXAMPLES ${CMAKE_MATCH_1})
		endif()
	endforeach()
endmacro()

macro(bsGetLibsToBuild)
	set(LIBS_TO_BUILD "")
	get_cmake_property(_vars VARIABLES)
	foreach(_var ${_vars})
		if(_var MATCHES "^WITH_LIB_([^_]+)$")
			if(WITH_LIB_${CMAKE_MATCH_1})
				string(TOLOWER ${CMAKE_MATCH_1} lib_lower)
				list(APPEND LIBS_TO_BUILD ${lib_lower})
			endif()
		endif()
	endforeach()
endmacro()

###########################
## bsIncludeLibsExamples ##
###########################
macro(bsIncludeLibExamples)
	foreach(lib ${ARGN})
		string(TOUPPER ${lib} lib_upper)
		if(DEFINED "WITH_LIB_${lib_upper}_EXAMPLES")
			foreach(example IN LISTS WITH_LIB_${lib_upper}_EXAMPLES)
				string(TOLOWER ${example} example_lower)
				set(fn "${CMAKE_SOURCE_DIR}/tools/cmake/modules/lib_${lib}_example_${example_lower}.cmake")
				set(lib_name "lib_${lib}_example_${example_lower}")
				if(EXISTS ${fn})
					include(${lib_name})
				else()
					message(FATAL_ERROR "Could not find example file ${fn} for library ${lib} and (example: ${example_lower})!")
				endif()
			endforeach()
		endif()
	endforeach()
endmacro()

######################
## bsBuildDoxygen() ##
######################
macro(bsBuildDocs)
	if(GENERATE_DOCS)
		# check if Doxygen is installed
		find_package(Doxygen)
		if(DOXYGEN_FOUND)
			# set input and output files
			set(DOXYGEN_IN ${CMAKE_CURRENT_SOURCE_DIR}/doc/manual/Doxyfile.in)
			set(DOXYGEN_OUT ${CMAKE_CURRENT_SOURCE_DIR}/doc/manual/Doxyfile)

			# request to configure the file
			configure_file(${DOXYGEN_IN} ${DOXYGEN_OUT} @ONLY)
			message("Doxygen build started")

			# note the option ALL which allows to build the docs together with the application
			add_custom_target( doc_doxygen ALL
				COMMAND ${DOXYGEN_EXECUTABLE} ${DOXYGEN_OUT}
				WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
				COMMENT "Generating API documentation with Doxygen"
				VERBATIM )
		else()
		  message("Doxygen need to be installed to generate the doxygen documentation")
		endif()
	endif()
endmacro()

#############################
## bsGetCompileDefinitions ##
#############################
macro(bsGetBuildCompileDefinitions)
	# get build time/date
	string(TIMESTAMP VERSION "%Y-%m-%d %H:%M")
	add_definitions(-DVERSION="${VERSION}")
# OR
	string(TIMESTAMP {output variable} [{format string}] [UTC])
	# get git revision
	set(_build_version "unknown")

	find_package(Git)
	if(GIT_FOUND)
	  execute_process(
		COMMAND ${GIT_EXECUTABLE} rev-parse --short HEAD
		WORKING_DIRECTORY "${local_dir}"
		OUTPUT_VARIABLE _build_version
		ERROR_QUIET
		OUTPUT_STRIP_TRAILING_WHITESPACE
	  )
	  message( STATUS "GIT hash: ${_build_version}")
	else()
	  message(STATUS "GIT not found")
	endif()
	 
	string(TIMESTAMP _time_stamp)
	configure_file(${local_dir}/cmake/gitversion.h.in ${output_dir}/gitversion.h @ONLY)
endmacro()

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
	message(STATUS "___ bsGetLibsToBuild ___")
	set(LIBS_TO_BUILD_UN "")
	get_cmake_property(_vars VARIABLES)

	foreach(_var ${_vars})
		if(_var MATCHES "^WITH_LIB_([^_]+)$")
			if(WITH_LIB_${CMAKE_MATCH_1})
				string(TOLOWER ${CMAKE_MATCH_1} lib_lower)
				list(APPEND LIBS_TO_BUILD_UN ${lib_lower})
			endif()
		endif()
	endforeach()

	foreach(_var ${LIBS_TO_BUILD_UN})
		string(TOUPPER ${_var} _var_upper)
        # this should match WITH_LIB_BOOST_DEPENDS for example
        foreach(lib ${WITH_LIB_${_var_upper}_DEPENDS})
            list(APPEND LIBS_TO_BUILD ${lib})
            list(APPEND LIBS_TO_BUILD ${_var})
        endforeach()
        list(APPEND LIBS_TO_BUILD ${_var})
    endforeach()
    list(REMOVE_DUPLICATES LIBS_TO_BUILD)
	message(STATUS "LIBS_TO_BULD=${LIBS_TO_BUILD}")
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

## bsIsInListBefore
##
## arguments: 
##  1. The list to search
##  2. string1
##  3. string2
##
## result: is_before=
##   0 - string1 was not before string2
##   1 - string1 is before string2 in the list
##
function(bsIsInListBefore)
    set(options)
    set(oneValueArgs BEFORE AFTER RESULT)
    set(multiValueArgs LIST)
    cmake_parse_arguments(var
        "${options}"
        "${oneValueArgs}"
        "${multiValueArgs}"
        "${ARGN}"
    )
    
    set(index1 0)
    set(index2 0)
	set(is_before 0 PARENT_SCOPE) 

    list(FIND LIBS_TO_BUILD ${var_BEFORE} index1)
    if(index1 GREATER -1)
        list(FIND LIBS_TO_BUILD ${var_AFTER} index2)
        if(index2 GREATER -1)
            cmake_print_variables(index1 index2)
            if(index1 LESS index2)
                message(STATUS "is before")
                set(is_before 1 PARENT_SCOPE)
            endif()
        endif()
    elseif()
    endif()
endfunction()

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

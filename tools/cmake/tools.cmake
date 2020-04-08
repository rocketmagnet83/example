####################
# bsGetLibsToBuild #
####################
macro(bsGetLibsToBuild)
	message(STATUS "___ bsGetLibsToBuild ___")
	set(LIBS_TO_BUILD "")
	get_cmake_property(_vars VARIABLES)
	foreach(v ${_vars})
		if(v MATCHES "^WITH_LIB_([^_]+)$")
			if(WITH_LIB_${CMAKE_MATCH_1})
				MESSAGE(STATUS "LIBSTOBUILD ADD: ${CMAKE_MATCH_1}")
				list(APPEND LIBS_TO_BUILD ${CMAKE_MATCH_1})
    		endif()
    	endif()
    endforeach()
	MESSAGE(STATUS ${LIBS_TO_BUILD})
endmacro()

#####################
## bsBuildExamples ##
#####################
macro(bsBuildExternalProjects)
	foreach(lib ${ARGN})
		bsIncludeLib(${lib})
		bsIncludeLibExamples(${lib})
	endforeach()
endmacro()


##################
## bsIncludeLib ##
##################
macro(bsIncludeLib)
	foreach(v ${ARGN})
		string(TOLOWER ${v} lib_lower)
		set(fn "${CMAKE_SOURCE_DIR}/tools/cmake/modules/lib_${lib_lower}.cmake")
		if(EXISTS ${fn})
			include(lib_${lib_lower})
		else()
			message(FATAL_ERROR "Unable to find library configuration file: lib_${lib_lower}!")
		endif()
	endforeach()
endmacro()

######################
## bsGetLibExamples ##
######################
macro(bsIncludeLibExamples)
	foreach(lib ${ARGN})
		string(TOLOWER ${lib} lib_lower)
		set(WITH_LIB_${lib_upper}_EXAMPLES "")
		# get all examples
		get_cmake_property(_vars VARIABLES)
		foreach(_var ${_vars})
			if(_var MATCHES "^WITH_LIB_${lib}_EXAMPLE_([A-Za-z]+)$")
				list(APPEND WITH_LIB_${lib}_EXAMPLES ${CMAKE_MATCH_1})
			endif()
			foreach(example ${CMAKE_MATCH_1})
				string(TOLOWER ${CMAKE_MATCH_1} example_lower)
				set(fn "${CMAKE_SOURCE_DIR}/tools/cmake/modules/lib_${lib_lower}_example_${example_lower}.cmake")
				if(EXISTS ${fn})
					include(lib_${lib_lower}_example_${example_lower})
				else()
					message(FATAL_ERROR "Unable to find example file ${fn}")
				endif()
			endforeach()
		endforeach()
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

##
##
##
function(bsListInsertBefore)
    set(options)
    set(oneValueArgs SEARCH INSERT RESULT)
    set(multiValueArgs LIST)
    cmake_parse_arguments(var
        "${options}"
        "${oneValueArgs}"
        "${multiValueArgs}"
        "${ARGN}"
    )
    
    set(index1 0)
	set(result 0 PARENT_SCOPE) 

    list(FIND var_LIST ${var_SEARCH} index1)
    cmake_print_variables(var_LIST)
    if(index1 GREATER -1)
        cmake_print_variables(index1)
        list(INSERT var_LIST ${index1} ${var_INSERT})
        set(result ${var_LIST} PARENT_SCOPE)
        cmake_print_variables(var_LIST)
    elseif()
        set(is_before 0 PARENT_SCOPE)
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

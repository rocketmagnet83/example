#################
## bsBuildLibs ##
#################
macro(bsBuildLibs)
	foreach(lib ${ARGN})
		bsIncludeLib(${lib})
		bsGetLibExamples(${lib})
		bsIncludeLibExamples(${lib})
	endforeach()
endmacro()

##################
## bsIncludeLib ##
##################
macro(bsIncludeLib)
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
					#	message(STATUS "Bulding lib ${lib}, example: ${example}")
					include(${lib_name})
				else()
					message(FATAL_ERROR "Could not find example file ${fn} for library ${lib} and (example: ${example_lower})!")
				endif()
			endforeach()
		endif()
	endforeach()
endmacro()


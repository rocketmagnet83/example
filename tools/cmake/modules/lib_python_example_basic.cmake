if(WITH_LIB_PYTHON_EXAMPLE_BASIC)
	if(NOT WITH_LIB_PYTHON)
		message(FATAL_ERROR "Error: Try to build example WITH_LIB_PYTHON_EXAMPLE_BASIC without WITH_LIB_PYTHON")
	endif()
	message(STATUS "Building example WITH_LIB_PYTHON_EXAMPLE_BASIC")

	set(LIB_PYTHON_EXAMPLE_BASIC_SRC
		${CMAKE_SOURCE_DIR}/src/examples/python/basic/python_basic.c
    )

	set(LIB_PYTHON_EXAMPLE_BASIC_RELEASE_OUTPUT_NAME python_basic)
	set(LIB_PYTHON_EXAMPLE_BASIC_DEBUG_OUTPUT_NAME python_basic_d)
	set(LIB_PYTHON_EXAMPLE_BASIC_INSTALL_PATH
        ${OUTPUT_PATH}/examples/python/basic/
    )

	add_executable(LIB_PYTHON_EXAMPLE_BASIC ${LIB_PYTHON_EXAMPLE_BASIC_SRC})

	target_include_directories(LIB_PYTHON_EXAMPLE_BASIC PRIVATE ${LIB_PYTHON_INC_PATH})
	target_link_directories(LIB_PYTHON_EXAMPLE_BASIC PRIVATE ${LIB_PYTHON_LIB_PATH})
	target_link_libraries(LIB_PYTHON_EXAMPLE_BASIC PRIVATE ${LIB_PYTHON_STATIC_LIBS})
       
	set_target_properties(LIB_PYTHON_EXAMPLE_BASIC PROPERTIES RELEASE_OUTPUT_NAME ${LIB_PYTHON_EXAMPLE_BASIC_RELEASE_OUTPUT_NAME})
	set_target_properties(LIB_PYTHON_EXAMPLE_BASIC PROPERTIES DEBUG_OUTPUT_NAME ${LIB_PYTHON_EXAMPLE_BASIC_DEBUG_OUTPUT_NAME})

	add_dependencies(LIB_PYTHON_EXAMPLE_BASIC ${LIB_PYTHON_DEPS})
	install(
		TARGETS LIB_PYTHON_EXAMPLE_BASIC
		RUNTIME DESTINATION ${LIB_PYTHON_EXAMPLE_BASIC_INSTALL_PATH}
	)
endif()

if(WITH_LIB_BOOST_EXAMPLE_PYTHON)
	if(NOT WITH_LIB_BOOST)
		message(FATAL_ERROR "Error: Try to build example WITH_LIB_BOOST_EXAMPLE_PYTHON without WITH_LIB_PYTHON")
	endif()

	message(STATUS "Building example WITH_LIB_BOOST_EXAMPLE_PYTHOn")

	set(LIB_BOOST_EXAMPLE_PYTHON_SRC
        ${CMAKE_SOURCE_DIR}/src/examples/boost/python/boost_python.cpp
    )
	set(LIB_BOOST_EXAMPLE_PYTHON_INSTALL_PATH
        ${OUTPUT_PATH}/examples/boost/python/
    )
    set(LIB_BOOST_EXAMPLE_PYTHON_OUTPUT_NAME_RELEASE 
        python_basic
    )
    set(LIB_BOOST_EXAMPLE_PYTHON_OUTPUT_NAME_DEBUG
        nlohmann_json_debug
    )

	add_executable(LIB_BOOST_EXAMPLE_PYTHON ${LIB_BOOST_EXAMPLE_PYTHON_SRC})
	set(CMAKE_C_COMPILER ${LIB_BOOST_EXAMPLE_PYTHON_COMPILER})
	set(CMAKE_CXX_STANDARD ${LIB_BOOST_EXAMPLE_PYTHON_CXX_STANDARD})
	set(CMAKE_CXX_STANDARD_REQUIRED ${LIB_BOOST_EXAMPLE_PYTHON_CXX_STANDARD_REQUIRED})

	target_include_directories(LIB_BOOST_EXAMPLE_PYTHON PRIVATE ${LIB_BOOST_INC_PATH})
	target_link_directories(LIB_BOOST_EXAMPLE_PYTHON PRIVATE ${LIB_BOOST_LIB_PATH})
	target_link_libraries(LIB_BOOST_EXAMPLE_PYTHON PRIVATE ${LIB_BOOST_STATIC_LIBS})
       
	set_target_properties(LIB_BOOST_EXAMPLE_PYTHON PROPERTIES RELEASE_OUTPUT_NAME ${LIB_BOOST_EXAMPLE_PYTHON_OUTPUT_NAME_RELEASE})
	set_target_properties(LIB_BOOST_EXAMPLE_PYTHON PROPERTIES DEBUG_OUTPUT_NAME ${LIB_BOOST_EXAMPLE_PYTHON_OUTPUT_NAME_DEBUG})

	add_dependencies(LIB_BOOST_EXAMPLE_PYTHON ${LIB_BOOST_DEPS})
	install(
		TARGETS LIB_BOOST_EXAMPLE_PYTHON
		RUNTIME DESTINATION ${LIB_BOOST_EXAMPLE_PYTHON_INSTALL_PATH}
	)
endif()


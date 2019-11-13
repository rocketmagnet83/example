if(WITH_LIB_NLOHMANNJSON_EXAMPLE_BASIC)
	message(STATUS "Building example WITH_LIB_NLOHMANNJSON_EXAMPLE_BASIC")

	set(LIB_NLOHMANNJSON_EXAMPLE_BASIC_SRC
        ${CMAKE_SOURCE_DIR}/src/examples/nlohmannjson/basic/nlohmann_json.cpp
    )
	set(LIB_NLOHMANNJSON_EXAMPLE_BASIC_INSTALL_PATH
        ${OUTPUT_PATH}/examples/nlohmannjson/basic/
    )
    set(LIB_NLOHMANNJSON_OUTPUT_NAME_RELEASE 
        nlohmannjson_release
    )
    set(LIB_NLOHMANNJSON_OUTPUT_NAME_DEBUG
        nlohmannjson_debug
    )

	add_executable(LIB_NLOHMANNJSON_EXAMPLE_BASIC ${LIB_NLOHMANNJSON_EXAMPLE_BASIC_SRC})
	set(CMAKE_C_COMPILER ${LIB_NLOHMANNJSON_EXAMPLE_BASIC_COMPILER})
	set(CMAKE_CXX_STANDARD ${LIB_NLOHMANNJSON_EXAMPLE_BASIC_CXX_STANDARD})
	set(CMAKE_CXX_STANDARD_REQUIRED ${LIB_NLOHMANNJSON_EXAMPLE_BASIC_CXX_STANDARD_REQUIRED})

	target_include_directories(LIB_NLOHMANNJSON_EXAMPLE_BASIC PRIVATE ${LIB_NLOHMANNJSON_INC_PATH})
	target_link_directories(LIB_NLOHMANNJSON_EXAMPLE_BASIC PRIVATE ${LIB_NLOHMANNJSON_LIB_PATH})
	target_link_libraries(LIB_NLOHMANNJSON_EXAMPLE_BASIC PRIVATE ${LIB_NLOHMANNJSON_STATIC_LIBS})
       
	set_target_properties(LIB_NLOHMANNJSON_EXAMPLE_BASIC PROPERTIES RELEASE_OUTPUT_NAME ${LIB_NLOHMANNJSON_OUTPUT_NAME_RELEASE})
	set_target_properties(LIB_NLOHMANNJSON_EXAMPLE_BASIC PROPERTIES DEBUG_OUTPUT_NAME ${LIB_NLOHMANNJSON_OUTPUT_NAME_DEBUG})

	add_dependencies(LIB_NLOHMANNJSON_EXAMPLE_BASIC ${LIB_NLOHMANNJSON_DEPS})
	install(
		TARGETS LIB_NLOHMANNJSON_EXAMPLE_BASIC
		RUNTIME DESTINATION ${LIB_NLOHMANNJSON_EXAMPLE_BASIC_INSTALL_PATH}
	)
	install(
		FILES ${CMAKE_SOURCE_DIR}/src/examples/nlohmannjson/basic/configuration.json
		DESTINATION ${OUTPUT_PATH}/examples/nlohmannjson/basic/
	)
endif()


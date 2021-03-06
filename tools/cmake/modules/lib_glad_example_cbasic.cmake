if(WITH_LIB_GLAD_EXAMPLE_CBASIC)
	if(NOT WITH_LIB_GLAD)
		message(FATAL_ERROR "Try to build example WITH_LIB_GLAD_EXAMPLE_CBASIC without WITH_LIB_GLAD")
	endif()
	message(STATUS "Building example WITH_LIB_GLAD_EXAMPLE_CBASIC")

	set(LIB_GLAD_EXAMPLE_CBASIC_SRC ${CMAKE_SOURCE_DIR}/src/examples/glad/basic/basic.c)
	set(LIB_GLAD_EXAMPLE_CBASIC_COMPILER gcc)
	set(LIB_GLAD_EXAMPLE_CBASIC_C_FLAGS_RELEASE "-O3 -Wall -Werror")
	set(LIB_GLAD_EXAMPLE_CBASIC_C_FLAGS_DEBUG "-g -Wall -Werror")
	set(LIB_GLAD_EXAMPLE_CBASIC_INSTALL_PATH "${OUTPUT_PATH}/examples/glad/basic/")
	set(LIB_GLAD_EXAMPLE_CBASIC_OUTPUT_NAME_RELEASE "basic")
	set(LIB_GLAD_EXAMPLE_CBASIC_OUTPUT_NAME_DEBUG "basic_d")



	add_executable(LIB_GLAD_EXAMPLE_CBASIC ${LIB_GLAD_EXAMPLE_CBASIC_SRC})
	set(CMAKE_C_COMPILER ${LIB_GLAD_EXAMPLE_CBASIC_COMPILER})

	target_include_directories(LIB_GLAD_EXAMPLE_CBASIC PRIVATE ${LIB_GLAD_INC_PATH})
	target_link_directories(LIB_GLAD_EXAMPLE_CBASIC PRIVATE ${LIB_GLAD_LIB_PATH})
	target_link_libraries(LIB_GLAD_EXAMPLE_CBASIC PRIVATE ${LIB_GLAD_STATIC_LIBS})
       
	set_target_properties(LIB_GLAD_EXAMPLE_CBASIC PROPERTIES RELEASE_OUTPUT_NAME ${LIB_GLAD_EXAMPLE_CBASIC_OUTPUT_NAME_RELEASE})
	set_target_properties(LIB_GLAD_EXAMPLE_CBASIC PROPERTIES DEBUG_OUTPUT_NAME ${LIB_GLAD_EXAMPLE_CBASIC_OUTPUT_NAME_DEBUG})

	add_dependencies(LIB_GLAD_EXAMPLE_CBASIC ${LIB_GLAD_DEPS})
	install(
		TARGETS LIB_GLAD_EXAMPLE_CBASIC
		RUNTIME DESTINATION ${LIB_GLAD_EXAMPLE_CBASIC_INSTALL_PATH}
	)
endif()



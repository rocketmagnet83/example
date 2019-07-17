if(WITH_LIB_GLFW_EXAMPLE_CBASIC)
	if(NOT WITH_LIB_GLAD)
		message(FATAL_ERROR "Error: Try to build example WITH_LIB_GLFW_EXAMPLE_CBASIC without WITH_LIB_GLAD")
	endif()
	if(NOT WITH_LIB_GLFW)
		message(FATAL_ERROR "Error: Try to build example WITH_LIB_GLFW_EXAMPLE_CBASIC without WITH_LIB_GLFW")
	endif()

	message(STATUS "Building example WITH_LIB_GLFW_EXAMPLE_CBASIC")

	set(LIB_GLFW_EXAMPLE_CBASIC_CXX_OR_C
        C
    )
	set(LIB_GLFW_EXAMPLE_CBASIC_FLAGS_RELEASE
        "-Wall -Werror -O3"
    )
	set(LIB_GLFW_EXAMPLE_CBASIC_FLAGS_DEBUG
        "-g -Wall -Werror"
    )
	set(LIB_GLFW_EXAMPLE_CBASIC_COMPILER
        gcc)
	set(LIB_GLFW_EXAMPLE_CBASIC_SRC
		${CMAKE_SOURCE_DIR}/src/examples/glfw/cbasic/glfw-init.c
    )
	set(LIB_GLFW_EXAMPLE_CBASIC_RELEASE_OUTPUT_NAME glfw-cbasic)
	set(LIB_GLFW_EXAMPLE_CBASIC_DEBUG_OUTPUT_NAME glfw-cbasic_d)
	set(LIB_GLFW_EXAMPLE_CBASIC_INSTALL_PATH
        ${OUTPUT_PATH}/examples/glfw/cbasic/
    )

	add_executable(LIB_GLFW_EXAMPLE_CBASIC ${LIB_GLFW_EXAMPLE_CBASIC_SRC})
	set(CMAKE_C_COMPILER ${LIB_GLFW_EXAMPLE_CBASIC_COMPILER})

	target_include_directories(LIB_GLFW_EXAMPLE_CBASIC PRIVATE ${LIB_GLFW_INC_PATH})
	target_link_directories(LIB_GLFW_EXAMPLE_CBASIC PRIVATE ${LIB_GLFW_LIB_PATH})
	target_link_libraries(LIB_GLFW_EXAMPLE_CBASIC PRIVATE ${LIB_GLFW_STATIC_LIBS})
       
	set_target_properties(LIB_GLFW_EXAMPLE_CBASIC PROPERTIES RELEASE_OUTPUT_NAME ${LIB_GLFW_EXAMPLE_CBASIC_RELEASE_OUTPUT_NAME})
	set_target_properties(LIB_GLFW_EXAMPLE_CBASIC PROPERTIES DEBUG_OUTPUT_NAME ${LIB_GLFW_EXAMPLE_CBASIC_DEBUG_OUTPUT_NAME})

	add_dependencies(LIB_GLFW_EXAMPLE_CBASIC ${LIB_GLFW_DEPS})
	install(
		TARGETS LIB_GLFW_EXAMPLE_CBASIC
		RUNTIME DESTINATION ${LIB_GLFW_EXAMPLE_CBASIC_INSTALL_PATH}
	)
endif()


if(WITH_LIB_GLFW)
    find_package(OpenGL REQUIRED)
    find_package(X11 REQUIRED)
    find_package(Threads REQUIRED)

	set(EXAMPLE_GLFW_EXAMPLE_CBASIC_CXX_OR_C
        C
    )

	set(EXAMPLE_GLFW_EXAMPLE_CBASIC_FLAGS_RELEASE
        "-Wall -Werror -O3"
    )

	set(LIB_GLFW_EXAMPLE_CBASIC_FLAGS_DEBUG
        "-g -Wall -Werror"
    )

	set(LIB_GLFW_EXAMPLE_CBASIC_COMPILER
        gcc)

	set(LIB_GLFW_EXAMPLE_CBASIC_SRC
        ${CMAKE_SOURCE_DIR}/src/examples/glfw/glfw-init.c
    )

    set(LIB_GLFW_INC_PATH
		${PLATFORM_INC_PATH}
        ${OUTPUT_PATH}/glad/include
		${OUTPUT_PATH}/glfw3/include
		${OPENGL_INCLUDE_DIR}
		${X11_INCLUDE_DIR}
    )

    set(LIB_GLFW_LIB_PATH
		${PLATFORM_LIB_PATH}
		${OUTPUT_PATH}/glad/lib
		${OUTPUT_PATH}/glfw3/lib
		${OPENGL_LIBRARIES}
		${X11_LIBRARIES}
    )

	set(LIB_GLFW_EXAMPLE_BASIC_SHARED FALSE)

    set(LIB_GLFW_STATIC_LIBS
		${LIB_GLAD_STATIC_LIBS}
        glfw3 
    )

    set(LIB_GLFW_SHARED_LIBS
		${PLATFORM_STATIC_LIBS}
		${LIB_GLAD_STATIC_LIBS}
        glfw3
        OpenGL::GL 
        Threads::Threads
		X11::X11
    )

	set(LIB_GLFW_EXAMPLE_CBASIC_RELEASE_OUTPUT_NAME glfw-init)
	set(LIB_GLFW_EXAMPLE_CBASIC_DEBUG_OUTPUT_NAME glfw-init_d)

	set(LIB_GLFW_EXAMPLE_CBASIC_DEPS
        external_glad
        external_glfw3
    )

	set(LIB_GLFW_EXAMPLE_CBASIC_INSTALL_PATH
        ${OUTPUT_PATH}/examples/glfw/
    )

	 ExternalProject_Add(external_glfw3
		PREFIX ${CMAKE_BINARY_DIR}/glfw3
		GIT_REPOSITORY ${GLFW_REPO}
		GIT_TAG ${GLFW_TAG}
		GIT_PROGRESS true
		GIT_SHALLOW True
		CMAKE_ARGS -DCMAKE_BUILD_TYPE:String=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${OUTPUT_PATH}/glfw3
		INSTALL_COMMAND COMMAND
			${CMAKE_COMMAND} -E copy ${CMAKE_BINARY_DIR}/glfw3/src/external_glfw3/deps/linmath.h ${OUTPUT_PATH}/glfw3/include/linmath.h &&
			make -j${CPU_COUNT} install
	)


ENDIF()

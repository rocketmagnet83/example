
if(WITH_LIB_GLFW)
	message(STATUS "Build with lib_glfw.cmake")
    find_package(OpenGL REQUIRED)
    find_package(X11 REQUIRED)
    find_package(Threads REQUIRED)

    set(LIB_GLFW_INC_PATH
		${PLATFORM_INC_PATH}
        ${OUTPUT_PATH}/lib/glad/include
		${OUTPUT_PATH}/lib/glfw/include
		${OPENGL_INCLUDE_DIR}
		${X11_INCLUDE_DIR}
    )

    set(LIB_GLFW_LIB_PATH
		${PLATFORM_LIB_PATH}
		${OUTPUT_PATH}/lib/glad/lib
		${OUTPUT_PATH}/lib/glfw/lib
		${OPENGL_LIBRARIES}
		${X11_LIBRARIES}
    )

	set(LIB_GLFW_EXAMPLE_BASIC_SHARED FALSE)

    set(LIB_GLFW_STATIC_LIBS
		${LIB_GLAD_STATIC_LIBS}
        glfw3 
		glapi
    )

    set(LIB_GLFW_SHARED_LIBS
		${PLATFORM_STATIC_LIBS}
		${LIB_GLAD_STATIC_LIBS}
        glfw3
		X11::X11
        OpenGL::GL 
        Threads::Threads
    )

	set(LIB_GLFW_DEPS
        external_glad
        external_glfw
    )

	 ExternalProject_Add(external_glfw
		PREFIX ${CMAKE_BINARY_DIR}/glfw
		GIT_REPOSITORY ${GLFW_REPO}
		GIT_TAG ${GLFW_TAG}
		GIT_PROGRESS true
		GIT_SHALLOW True
		CMAKE_ARGS -DCMAKE_BUILD_TYPE:String=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${OUTPUT_PATH}/lib/glfw
		INSTALL_COMMAND 
			${CMAKE_COMMAND} -E copy ${CMAKE_BINARY_DIR}/glfw/src/external_glfw/deps/linmath.h ${OUTPUT_PATH}/lib/glfw/include/linmath.h &&
			make -j${CPU_COUNT} install
	)


ENDIF()

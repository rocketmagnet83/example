IF(WITH_LIB_GLAD)
	message(STATUS "Included lib_glad.cmake.")
	###################
	## first example ##
	###################
	find_package(OpenGL REQUIRED)
	find_package(X11 REQUIRED)
	find_package(Threads REQUIRED)

	set(LIB_GLAD_INC_PATH
		${PLATFORM_INC_PATH}
		${X11_INCLUDE_DIR}
		${OPENGL_INCLUDE_DIR}
		${OUTPUT_PATH}/lib/glad/include
	)

	set(LIB_GLAD_LIB_PATH
		${PLATFORM_LIB_PATH}
		${X11_LIBRARIES}
		${OPENGL_LIBRARIES}
		${OUTPUT_PATH}/lib/glad/lib
	)

	set(LIB_GLAD_STATIC_LIBS
		${PLATFORM_STATIC_LIBS} 
		glut
		glad 
		OpenGL::GL 
		Threads::Threads 
		X11::X11 
		X11::Xxf86vm 
		X11::Xi 
		X11::Xrandr 
		X11::Xcursor 
		X11::Xinerama
	)

	set(LIB_GLAD_DEPS "external_glad")

	
	ExternalProject_Add(external_glad
		PREFIX ${CMAKE_BINARY_DIR}/glad
		GIT_REPOSITORY ${GLAD_REPO}
		GIT_TAG ${GLAD_TAG}
		GIT_PROGRESS TRUE
		GIT_SHALLOW TRUE
		SOURCE_DIR ${CMAKE_BINARY_DIR}/glad-src
		INSTALL_DIR ${CMAKE_BINARY_DIR}/glad-download
		CMAKE_ARGS -DCMAKE_BUILD_TYPE:String=${CMAKE_BUILD_TYPE} -DGLAD_INSTALL=ON -DCMAKE_INSTALL_PREFIX=${OUTPUT_PATH}/lib/glad
		INSTALL_COMMAND COMMAND make -j${CPU_COUNT} install
	)
ENDIF()

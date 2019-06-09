
cmake_print_variables(WITH_LIB_GLAD)
IF(WITH_LIB_GLAD)
	message(STATUS "Included lib_glad.cmake done.")
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
		${OUTPUT_PATH}/glad/include
	)

	set(LIB_GLAD_LIB_PATH
		${PLATFORM_LIB_PATH}
		${X11_LIBRARIES}
		${OPENGL_LIBRARIES}
		${OUTPUT_PATH}/glad/lib
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


	set(LIB_GLAD_EXAMPLE_CBASIC_SRC ${CMAKE_SOURCE_DIR}/src/examples/glad/basic.c)
	set(LIB_GLAD_EXAMPLE_CBASIC_COMPILER gcc)
	set(LIB_GLAD_EXAMPLE_CBASIC_C_FLAGS_RELEASE "-O3 -Wall -Werror")
	set(LIB_GLAD_EXAMPLE_CBASIC_C_FLAGS_DEBUG "-g -Wall -Werror")
	set(LIB_GLAD_EXAMPLE_CBASIC_INSTALL_PATH "${OUTPUT_PATH}/examples/glad/cbasic/")
	set(LIB_GLAD_EXAMPLE_CBASIC_OUTPUT_NAME_RELEASE "basic")
	set(LIB_GLAD_EXAMPLE_CBASIC_OUTPUT_NAME_DEBUG "basic_d")
	set(LIB_GLAD_EXAMPLE_CBASIC_DEPS "external_glad")

	ExternalProject_Add(external_glad
		PREFIX ${CMAKE_BINARY_DIR}/glad
		GIT_REPOSITORY ${GLAD_REPO}
		GIT_TAG ${GLAD_TAG}
		GIT_PROGRESS true
		GIT_SHALLOW True
		SOURCE_DIR ${CMAKE_BINARY_DIR}/glad-src
		INSTALL_DIR ${CMAKE_BINARY_DIR}/glad-download
		CMAKE_ARGS -DCMAKE_BUILD_TYPE:String=${CMAKE_BUILD_TYPE} -DGLAD_INSTALL=ON -DCMAKE_INSTALL_PREFIX=${OUTPUT_PATH}/glad
		INSTALL_COMMAND COMMAND make -j${CPU_COUNT} install
	)
ENDIF()

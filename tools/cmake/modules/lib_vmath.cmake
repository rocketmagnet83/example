if(WITH_LIB_VMATH)
	message(STATUS "Build with lib_vmat.cmake")
	ExternalProject_Add(external_vmath
		PREFIX ${CMAKE_BINARY_DIR}/vmath
		GIT_REPOSITORY ${VMATH_REPO}
		GIT_TAG ${VMATH_TAG}
		GIT_PROGRESS true
		GIT_SHALLOW True
		BUILD_COMMAND
		INSTALL_COMMAND cp ${CMAKE_BINARY_DIR}/vmath/src/external_vmath/src/vmath.h ${CMAKE_OUTPUTPATH}/vmath/include/vmath.h &&
						cp ${CMAKE_BINARY_DIR}/vmath/src/external_vmath/src/vmath.cpp ${CMAKE_OUTPUTPATH}/vmath/include/vmath.cpp)
endif()

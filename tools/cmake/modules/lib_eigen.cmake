
IF(WITH_LIB_EIGEN)
	message(STATUS "Included lib_eigen.cmake.")

	set(LIB_EIGEN_EXAMPLE_BASIC_COMPILER g++)
	set(LIB_EIGEN_EXAMPLE_BASIC_CXX_STANDARD 11)
	set(LIB_EIGEN_EXAMPLE_BASIC_CXX_STANDARD_REQUIRED TRUE)
 
	set(LIB_EIGEN_INC_PATH
		${PLATFORM_INC_PATH}
		${OUTPUT_PATH}/eigen/include/eigen3
	)

	set(LIB_EIGEN_LIB_PATH
		${PLATFORM_LIB_PATH}
		#		${OUTPUT_PATH}/eigen/lib
	)

	set(LIB_EIGEN_STATIC_LIBS
		${PLATFORM_STATIC_LIBS}
	)

	set(LIB_EIGEN_DEPS
		external_eigen
	)
		
	ExternalProject_Add(external_eigen
		URL ${EIGEN_URL}
		DOWNLOAD_DIR download/eigen
		URL_HASH MD5=${EIGEN_HASH}
		PREFIX ${OUTPUT_PATH}/eigen
		CMAKE_ARGS -DCMAKE_BUILD_TYPE:String=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${OUTPUT_PATH}/eigen 
	)

ENDIF()


IF(WITH_LIB_EIGEN)
 
	set(LIB_EIGEN_INC_PATH
		${PLATFORM_INC_PATH}
		${OUTPUT_PATH}/lib/eigen/include/eigen3
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
		#		PREFIX ${OUTPUT_PATH}/libs/eigen
		CMAKE_ARGS -DCMAKE_BUILD_TYPE:String=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${OUTPUT_PATH}/lib/eigen 
	)

ENDIF()

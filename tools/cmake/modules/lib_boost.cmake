if(WITH_LIB_BOOST)
	message(STATUS "Build WITH_LIB_BOOST.")

	set(LIB_BOOST_INC_PATH ${OUTPUT_PATH}/libs/boost/include/)
	set(LIB_BOOST_LIB_PATH ${OUTPUT_PATH}/libs/boost/lib)
	set(LIB_BOOST_DEPS external_boost)
	set(LIB_BOOST_STATIC_LIBS boost_python27)
 
	ExternalProject_Add(external_boost
		PREFIX ${CMAKE_BINARY_DIR}/boost
		URL ${BOOST_URL}
		DOWNLOAD_DIR ${CMAKE_BINARY_DIR}/boost
		URL_HASH MD5=${BOOST_HASH}
		#		PATCH_COMMAND cd ${CMAKE_BINARY_DIR}/boost/src/external_boost/ && patch project-config.jam ${CMAKE_SOURCE_DIR}/tools/patches/boost_python3.7.patch
		CONFIGURE_COMMAND cd ${CMAKE_BINARY_DIR}/boost/src/external_boost/ && 
		./bootstrap.sh --prefix=${OUTPUT_PATH}/libs/boost/ --with-libraries=python --with-python=${CMAKE_BINARY_DIR}/libs/python/python3.7 --with-python-root=${CMAKE_BINARY_DIR}/libs/python --with-python-version=3.7
		BUILD_COMMAND cd ${CMAKE_BINARY_DIR}/boost/src/external_boost/ && 
					  ./b2
		INSTALL_COMMAND cd ${CMAKE_BINARY_DIR}/boost/src/external_boost/ && ./bjam && ./bjam install
	)

endif()

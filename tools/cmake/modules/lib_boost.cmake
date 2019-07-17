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
		CONFIGURE_COMMAND cd ${CMAKE_BINARY_DIR}/boost/src/external_boost/ && ./bootstrap.sh --exec-prefix=${OUTPUT_PATH}/libs/boost/bin --libdir=${OUTPUT_PATH}/libs/boost/lib --includedir=${OUTPUT_PATH}/libs/boost/include
	BUILD_COMMAND cd ${CMAKE_BINARY_DIR}/boost/src/external_boost/ && ./b2
		INSTALL_COMMAND cd ${CMAKE_BINARY_DIR}/boost/src/external_boost/ && ./bjam && ./bjam install
		INSTALL_DIR ${OUTPUT_PATH}/boost
	)

endif()

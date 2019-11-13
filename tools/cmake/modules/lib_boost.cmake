if(WITH_LIB_BOOST)
	message(STATUS "Build lib_boost.cmake.")

	set(LIB_BOOST_INC_PATH ${OUTPUT_PATH}/lib/boost/include/)
	set(LIB_BOOST_LIB_PATH ${OUTPUT_PATH}/lib/boost/lib)
	set(LIB_BOOST_DEPS external_boost)
	set(LIB_BOOST_STATIC_LIBS boost_python37)

	ExternalProject_Add(external_boost
		PREFIX ${CMAKE_BINARY_DIR}/boost
		URL ${BOOST_URL}
		DOWNLOAD_DIR ${CMAKE_BINARY_DIR}/boost
		URL_HASH MD5=${BOOST_HASH}
		PATCH_COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_SOURCE_DIR}/tools/build-configurations/boost/user-config.jam ${CMAKE_BINARY_DIR}/boost/src/external_boost/user-config.jam
		CONFIGURE_COMMAND cd ${CMAKE_BINARY_DIR}/boost/src/external_boost/ && 
		./bootstrap.sh --prefix=${OUTPUT_PATH}/lib/boost/ --with-libraries=python --with-python=python3.7
		BUILD_COMMAND cd ${CMAKE_BINARY_DIR}/boost/src/external_boost/ && 
					  ./b2
		INSTALL_COMMAND cd ${CMAKE_BINARY_DIR}/boost/src/external_boost/ && ./bjam && ./bjam install
	)

endif()

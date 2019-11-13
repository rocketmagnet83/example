if(WITH_LIB_BOOST)
	message(STATUS "Build lib_boost.cmake.")

	set(LIB_BOOST_INC_PATH 
		${PLATFORM_INC_PATH}
		${OUTPUT_PATH}/lib/boost/include/
		${OUTPUT_PATH}/lib/python/include/python3.7m/
		${OUTPUT_PATH}/lib/boost/src/external_boost/
	)
	set(LIB_BOOST_LIB_PATH 
		${PLATFORM_LIB_PATH}
		${OUTPUT_PATH}/lib/boost/lib
		${OUTPUT_PATH}/lib/python/lib/python3.7/config-3.7m-x86_64-linux-gnu/
		${OUTPUT_PATH}/lib/boost/src/external_boost/stage/lib/
	)
	set(LIB_BOOST_DEPS external_boost)
	set(LIB_BOOST_STATIC_LIBS 
		${PLATFORM_STATIC_LIBS} 
		${CMAKE_DL_LIBS}
		boost_python37 
		python3.7m
		pthread
		util
	)

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

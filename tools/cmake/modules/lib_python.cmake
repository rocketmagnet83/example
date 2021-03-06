if(WITH_LIB_PYTHON)
	message(STATUS "Build with lib_python.cmake")

	set(LIB_PYTHON_INC_PATH ${OUTPUT_PATH}/lib/python/include/python3.7m)
	set(LIB_PYTHON_LIB_PATH ${OUTPUT_PATH}/lib/python/bin)
	set(LIB_PYTHON_STATIC_LIBS python3.7m)
	set(LIB_PYTHON_DEPS external_python)

	ExternalProject_Add(external_python
			PREFIX ${CMAKE_BINARY_DIR}/python
			URL ${PYTHON_URL}
			DOWNLOAD_DIR ${CMAKE_BINARY_DIR}/python
			URL_MD5 ${PYTHON_HASH}
			BUILD_IN_SOURCE true
			CONFIGURE_COMMAND  ./configure --prefix=${OUTPUT_PATH}/lib/python
			BUILD_COMMAND  make ${}
			INSTALL_COMMAND cd ${CMAKE_BINARY_DIR}/python/src/external_python/ && make install
			INSTALL_DIR ${OUTPUT_PATH}/lib/python
	)

endif()

ExternalProject_Add(external_python
	URL ${PYTHON_URL}
	DOWNLOAD_DIR ${CMAKE_BINARY_DIR}/python
	URL_HASH MD5=${PYTHON_HASH}
	CONFIGURE_COMMAND cd ${CMAKE_BINARY_DIR}/external_python-prefix/src/external_python && ./configure --prefix=${OUTPUT_PATH}/python
	BUILD_COMMAND cd ${CMAKE_BINARY_DIR}/external_python-prefix/src/external_python && make -j${PROCESSOR_COUNT}
	INSTALL_COMMAND cd ${CMAKE_BINARY_DIR}/external_python-prefix/src/external_python && make install
	INSTALL_DIR ${OUTPUT_PATH}/python
)

ExternalProject_Add(external_bzip2
	URL ${BOOST_URL}
	DOWNLOAD_DIR ${CMAKE_BINARY_DIR}/boost
	URL_HASH SHA256=${BOOST_HASH}
	PREFIX ${CMAKE_BINARY_DIR}/boost
	CONFIGURE_COMMAND ""
	BUILD_COMMAND cd ${CMAKE_BINARY_DIR}/booost/src/external_boost/ && make -j${PROCESSOR_COUNT}
	INSTALL_COMMAND cd ${CMAKE_BINARY_DIR}/boost/src/external_boost/ && make -PREFIX=${OUTPUT_PATH}/boost} install
	INSTALL_DIR ${OUTPUT_PATH}/boost
)

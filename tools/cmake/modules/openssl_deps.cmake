ExternalProject_Add(external_openssl
        PREFIX ${CMAKE_BINARY_DIR}/openssl
        URL ${OPENSSL_URL}
		URL_HASH MD5=${OPENSSL_HASH}
        DOWNLOAD_DIR ${CMAKE_BINARY_DIR}/openssl_download
		CONFIGURE_COMMAND cd ${CMAKE_BINARY_DIR}/openssl/src/external_openssl && ./config --prefix=${OUTPUT_PATH}/openssl --openssldir=${OUTPUT_PATH}/openssl
		BUILD_IN_SOURCE 1
		BUILD_COMMAND make -j${PROCESSOR_COUNT}
        INSTALL_DIR ${OUTPUT_PATH}/openssl
		LOG_INSTALL 1
		LOG_BUILD 1
)

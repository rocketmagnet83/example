IF(WITH_LIB_OPENSSL)
    set(WITH_LIB_OPENSSL_INCLUDE_PATH
		${OUTPUT_PATH}/openssl/include
    )

    set(WITH_LIB_OPENSSL_LIB_PATH
		${OUTPUT_PATH}/opensll/lib
	)

	set(WITH_LIB_OPENSSL_STATIC_LIBS
		crypto
		ssl
	)

	set(WITH_LIB_OPENSSL_SHARED_LIBS
		crypto
		ssl
	)

	set(WITH_LIB_OPENSSL_BIN_PATH
		$OUTPUT_PATH}/openssl/bin
	)
	
		






ENDIF()

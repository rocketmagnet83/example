IF(WITH_LIB_CPPFLAGS)
	set(LIB_CPPFLAGS_INC_PATH ${OUTPUT_PATH}/lib/cppflags/include/)
	set(LIB_CPPFLAGS_DEPS external_cppflags)


	ExternalProject_Add(external_cppflags
		GIT_REPOSITORY ${CPPFLAGS_REPO}
		GIT_TAG ${CPPFLAGS_HASH}
		GIT_PROGRESS TRUE
		GIT_SHALLOW TRUE
		DOWNLOAD_DIR ${CMAKE_BINARY_DIR}/cppflags
		SOURCE_DIR ${CMAKE_BINARY_DIR}/cppflags
		CONFIGURE_COMMAND ""
		BUILD_COMMAND ""
		INSTALL_COMMAND COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_BINARY_DIR}/cppflags/include/flags ${OUTPUT_PATH}/lib/cppflags/include/flags
	)


ENDIF()

ExternalProject_Add(external_gettext
        PREFIX ${CMAKE_BINARY_DIR}/gettext
		GIT_REPOSITORY ${GETTEXT_REPO}
		GIT_TAG ${GETTEXT_TAG}
		GIT_SHALLOW 1
		GIT_PROGRESS 1
		CMAKE_COMMAND ""
		BUILD_IN_SOURCE 1
		CONFIGURE_COMMAND cd ${CMAKE_BINARY_DIR}/gettext/src/external_gettext/builds/unix && chmod +x ./configure && ./configure --prefix=${OUTPUT_PATH}/gettext
		BUILD_COMMAND make -j${PROCESSOR_COUNT}
		INSTALL_COMMAND make install
        INSTALL_DIR ${OUTPUT_PATH}/gettext
)

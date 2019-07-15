ExternalProject_Add(external_freetype2
        PREFIX ${CMAKE_BINARY_DIR}/freetype2
		GIT_REPOSITORY ${FREETYPE_REPO}
		GIT_TAG ${FREETYPE_TAG}
		GIT_SHALLOW 1
		GIT_PROGRESS 1
		BUILD_IN_SOURCE 1
		CONFIGURE_COMMAND cd ${CMAKE_BINARY_DIR}/freetype2/src/external_freetype2 && ./autogen.sh && ./configure --prefix=${OUTPUT_PATH}/freetype2
		BUILD_COMMAND make -j${PROCESSOR_COUNT}
		INSTALL_COMMAND make install
)

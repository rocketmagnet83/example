ExternalProject_Add(external_flex
	PREFIX ${CMAKE_BINARY_DIR}/flex
        GIT_REPOSITORY ${FLEX_REPO}
        GIT_TAG ${FLEX_TAG}
		GIT_PROGRESS true
		GIT_SHALLOW True
        CONFIGURE_COMMAND cd ${CMAKE_BINARY_DIR}/flex/src/external_flex && ./autogen.sh && ./configure --prefix=${OUTPUT_PATH}
        DOWNLOAD_DIR ${CMAKE_BINARY_DIR}/flex
        BINARY_DIR ${CMAKE_BINARY_DIR}/flex/src/external_flex
        BUILD_COMMAND make 
					
)



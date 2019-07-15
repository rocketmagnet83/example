ExternalProject_Add(external_bison
	PREFIX ${CMAKE_BINARY_DIR}/bison
		GIT_REPOSITORY ${BISON_REPO}
		GIT_TAG ${BISON_TAG}
		GIT_PROGRESS true
		GIT_SHALLOW True
		GIT_SUBMDOULES "git submodules update --init"
		CMAKE_COMMAND ""
        BINARY_DIR ${CMAKE_BINARY_DIR}/bison/
		CONFIGURE_COMMAND cd ${CMAKE_BINARY_DIR}/bison/src/external_flex && ./bootstrap.sh && ./configure --prefix=${OUTPUT_PATH}/bison
		BUILD_IN_SOURCE 1
		BUILD_COMMAND make -j${PROCESSOR_COUNT}
		INSTALL_COMMAND make install
	LOG_BUILD 1
	LOG_INSTALL 1
					
)



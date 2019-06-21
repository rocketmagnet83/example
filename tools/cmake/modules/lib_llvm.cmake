ExternalProject_Add(external_llvm
	GIT_REPOSITORY ${LLVM_REPO}
	GIT_TAG ${LLVM_TAG}
	GIT_PROGRESS True
	GIT_SHALLOW True
	CONFIGURE_COMMAND cd ${CMAKE_BINARY_DIR}/external_llvm-prefix/src/external_llvm && ./configure --prefix=${OUTPUT_PATH}/python
	BUILD_COMMAND cd ${CMAKE_BINARY_DIR}/external_llvm-prefix/src/external_llvm && make -j${CPU_COUNT}
	INSTALL_COMMAND cd ${CMAKE_BINARY_DIR}/external_llvm-prefix/src/external_llvm && make install
	INSTALL_DIR ${OUTPUT_PATH}/llvm
)

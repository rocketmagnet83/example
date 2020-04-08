

ExternalProject_Add(external_stbimage
	PREFIX ${CMAKE_BINARY_DIR}/stb_image
	GIT_REPOSITORY ${STBIMAGE_REPO}
	GIT_TAG ${STBIMAGE_TAG}
	GIT_SHALLOW 1
	DOWNLOAD_DIR ${CMAKE_BINARY_DIR}/stb_image
	CONFIGURE_COMMAND ""
	BUILD_COMMAND ""
	INSTALL_COMMAND COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_BINARY_DIR}/stb_image/src/external_stbimage/stb_image.h ${OUTPUT_PATH}/stb_image/include/stb_image/stb_image.h
)	

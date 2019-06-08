ExternalProject_Add(extern_stb_image
	PREFIX ${CMAKE_BINARY_DIR}/stb_image
	URL ${STB_IMAGE_REPO}
	URL_HASH SHA256=${STB_IMAGE_HASH}
	DOWNLOAD_DIR ${CMAKE_BINARY_DIR}/stb_image
	DOWNLOAD_NO_EXTRACT 1
	CONFIGURE_COMMAND ""
	BUILD_COMMAND ""
	INSTALL_COMMAND COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_BINARY_DIR}/stb_image/stb_image.h ${OUTPUT_PATH}/stb_image/include/stb_image/stb_image.h
)	

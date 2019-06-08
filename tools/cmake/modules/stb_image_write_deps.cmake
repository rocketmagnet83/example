ExternalProject_Add(extern_stb_image_write
	PREFIX ${CMAKE_BINARY_DIR}/stb_image_write
	URL ${STB_IMAGE_WRITE_REPO}
	URL_HASH SHA256=${STB_IMAGE_WRITE_HASH}
	DOWNLOAD_DIR ${CMAKE_BINARY_DIR}/stb_image_write
	DOWNLOAD_NO_EXTRACT 1
	CONFIGURE_COMMAND ""
	BUILD_COMMAND ""
	INSTALL_COMMAND COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_BINARY_DIR}/stb_image_write/stb_image_write.h ${OUTPUT_PATH}/stb_image_write/include/stb_image_write/stb_image_write.h
)	

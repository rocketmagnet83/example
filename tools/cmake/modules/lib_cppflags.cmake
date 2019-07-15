IF(WITH_LIB_CPPFLAGS)
	set(LIB_CPPFLAGS


	ExternalProject_Add(external_cppflags
		#		PREFIX ${CMAKE_BINARY_DIR}/cppflags
		GIT_REPOSITORY ${CPPFLAGS_REPO}
		GIT_TAG ${CPPFLAGS_HASH}
		GIT_PROGRESS TRUE
		GIT_SHALLOW TRUE
		DOWNLOAD_DIR ${CMAKE_BINARY_DIR}/cppflags
		CONFIGURE_COMMAND ""
		BUILD_COMMAND ""
		#		INSTALL_COMMAND COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_BINARY_DIR}/cppflags/flags.hpp ${OUTPUT_PATH}/libs/nlohmann_json/include/nlohmann/json.hpp
	)


ENDIF()

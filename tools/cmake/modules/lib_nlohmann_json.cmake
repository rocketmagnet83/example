IF(WITH_LIB_NLOHMANN_JSON)
	set(LIB_NLOHMANN_JSON_EXAMPLE_BASIC_COMPILER g++)
	set(LIB_NLOHMANN_JSON_EXAMPLE_BASIC_CXX_STANDARD 11)
	set(LIB_NLOHMANN_JSON_EXAMPLE_BASIC_CXX_STANDARD_REQUIRED TRUE)
    

	set(LIB_NLOHMANN_JSON_INC_PATH
        ${OUTPUT_PATH}/nlohmann_json/include/
    )

	set(LIB_NLOHMANN_JSON_EXAMPLE_BASIC_STATIC_LIBS ${PLATFORM_LIBS})
	set(LIB_NLOHMANN_JSON_EXAMPLE_BASIC_SRC
        ${CMAKE_SOURCE_DIR}/src/examples/nlohmann_json/basic/nlohmann_json.cpp
    )

	set(LIB_NLOHMANN_JSON_EXAMPLE_BASIC_INSTALL_PATH
        ${OUTPUT_PATH}/examples/nlohmann_json/basic/
    )

    set(LIB_NLOHMANN_JSON_OUTPUT_NAME_RELEASE 
        nlohmann_json_release
    )
    set(LIB_NLOHMANN_JSON_OUTPUT_NAME_DEBUG
        nlohmann_json_debug
    )

    set(LIB_NLOHMANN_JSON_DEPS
        external_nlohmann_json
    )

	ExternalProject_Add(external_nlohmann_json
		PREFIX ${CMAKE_BINARY_DIR}/nlohmann_json
		URL ${NLOHMANN_JSON_REPO}
		URL_HASH SHA256=${NLOHMANN_JSON_HASH}
		DOWNLOAD_DIR ${CMAKE_BINARY_DIR}/nlohmann_json
		DOWNLOAD_NO_EXTRACT 1
		CONFIGURE_COMMAND ""
		BUILD_COMMAND ""
		INSTALL_COMMAND COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_BINARY_DIR}/nlohmann_json/json.hpp ${OUTPUT_PATH}/nlohmann_json/include/nlohmann/json.hpp
	)




ENDIF()

IF(WITH_LIB_NLOHMANN_JSON)
    set(LIB_NLOHMANN_JSON_INCLUDE_PATH
        ${OUTPUT_PATH}/nlohmann_json/include/
    )

    set(LIB_NLOHMANN_JSON_LIBS "")
    set(LIB_NLOHMANN_JSON_SRC
        ${CMAKE_SOURCE_DIR}/src/examples/nlohmann_json/nlohmann_json.cpp
    )

    set(LIB_NLOHMANN_JSON_INSTALL_PATH
        ${OUTPUT_PATH}/examples/nlohmann_json
    )

    IF(CMAKE_BUILD_TYPE STREQUAL "Debug")
        set(${LIB_EXAMPLE_NLOHMANN_JSON_PREFIX} _debug)
    ENDIF()

    set(LIB_NLOHMANN_JSON_OUTPUT_NAME_RELEASE 
        nlohmann_json_release
    )
    set(LIB_NLOHMANN_JSON_OUTPUT_NAME_DEBUG
        nlohmann_json_debug
    )

    set(LIB_NLOHMANN_JSON_DEPS
        extern_nlohmann_json
    )
ENDIF(WITH_LIB_NLOHMANN_JSON)

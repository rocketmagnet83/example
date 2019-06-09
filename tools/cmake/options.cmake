# debug or release build
option(WITH_DEBUG "Creating a Debug build." OFF)

# options to build the examples
option(WITH_EXAMPLES "Build with all examples. (default:0)" OFF)

set(ALL_LIBS 
	glad 
	glfw
	nlohmann_json
)

option(GENERATE_DOCS "Create the doxygen API documentation" ON)

# WITH_LIB_GLAD
option(WITH_LIB_GLAD "Build and link with the library GLAD" ON)
option(WITH_LIB_GLAD_EXAMPLE_CBASIC "Build the basic Glad example (default:0)" ON)

# WITH_LIB_GLFW
option(WITH_LIB_GLFW "Build and link with library GLFW" ON)
option(WITH_LIB_GLFW_EXAMPLE_CBASIC "Build the basic GLFW C example (default:1)" ON)
option(WITH_LIB_GLFW_EXAMPLE_CPPBASIC "Build the GLFW CPP wrapper class example (default:1)" ON)

option(WITH_LIB_NLOHMANN_JSON "Build and link with the library NLOHMANN_JSON" ON)
option(WITH_LIB_NLOHMANN_JSON_EXAMPLE_BASIC "Buid a simple nlohmann_json example which is showing the most important features." ON)




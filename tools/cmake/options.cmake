# debug or release build
option(WITH_DEBUG "Creating a Debug build." OFF)

# options to build the examples
option(WITH_EXAMPLES "Build with all examples. (default:0)" OFF)

option(GENERATE_DOCS "Create the doxygen API documentation" ON)

# WITH_LIB_GLAD
option(WITH_LIB_GLAD "Build and link with the library GLAD" ON)
option(WITH_LIB_GLAD_EXAMPLE_CBASIC "Build the basic Glad example (default:0)" ON)

# WITH_LIB_GLFW
option(WITH_LIB_GLFW "Build and link with library GLFW" ON)
option(WITH_LIB_GLFW_EXAMPLE_CBASIC "Build the basic GLFW C example (default:1)" ON)
option(WITH_LIB_GLFW_EXAMPLE_CPPBASIC "Build the GLFW CPP wrapper class example (default:1)" OFF)
set(WITH_LIB_GLFW_DEPENDS glad nlohmann_json cppflags eigen)


# WITH_LIB_NLOHMANN_JSON
option(WITH_LIB_NLOHMANN_JSON "Build and link with the library NLOHMANN_JSON" ON)
option(WITH_LIB_NLOHMANN_JSON_EXAMPLE_BASIC "Buid a simple nlohmann_json example which is showing the most important features." ON)

# WITH_LIB_EIGEN
option(WITH_LIB_EIGEN "Build and link with the Eigen library" OFF)
option(WITH_LIB_EIGEN_EXAMPLE_BASIC "Simple example using the eigen library." OFF)

# WITH_LIB_CPPFLAGS
option(WITH_LIB_CPPFLAGS "Build and link with C++11 bitmasks library" OFF)
option(WITH_LIB_CPPFLAGS_EXAMPLE_BASIC "Simple example how to use C++11 bitmasks." OFF)

# WITH_LIB_PYTHON
option(WITH_LIB_PYTHON "Build with Python library" OFF)
option(WITH_LIB_PYTHON_EXAMPLE_BASIC "Simple Python embeding example" OFF)

# WITH_LIB_BOOST
option(WITH_LIB_BOOST "Build with Boost library" OFF)
option(WITH_LIB_BOOST_EXAMPLE_PYTHON "Simple BOOST::Python example" OFF)
set(WITH_LIB_BOOST_DEPENDS python)

bsGetLibsToBuild(${LIBS_TO_BUILD})

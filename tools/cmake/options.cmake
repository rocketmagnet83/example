# debug or release build
option(WITH_DEBUG "Creating a Debug build." OFF)

# options to build the examples
option(WITH_EXAMPLES "Build with all examples. (default:0)" OFF)

option(GENERATE_DOCS "Create the doxygen API documentation" ON)

# WITH_LIB_GLAD
option(WITH_LIB_GLAD "Build and link with the library GLAD" TRUE)
option(WITH_LIB_GLAD_EXAMPLE_CBASIC "Build the basic Glad example (default:0)" TRUE)

# WITH_LIB_GLFW
option(WITH_LIB_GLFW "Build and link with library GLFW" TRUE)
option(WITH_LIB_GLFW_EXAMPLE_CBASIC "Build the basic GLFW C example (default:1)" TRUE)
option(WITH_LIB_GLFW_EXAMPLE_CPPBASIC "Build the GLFW CPP wrapper class example (default:1)" TRUE)
set(WITH_LIB_GLFW_DEPENDS glad nlohmann_json)


# WITH_LIB_NLOHMANN_JSON
option(WITH_LIB_NLOHMANNJSON "Build and link with the library NLOHMANN_JSON" TRUE)
option(WITH_LIB_NLOHMANNJSON_EXAMPLE_BASIC "Buid a simple nlohmann_json example which is showing the most important features." TRUE)

# WITH_LIB_EIGEN
option(WITH_LIB_EIGEN "Build and link with the Eigen library" TRUE)
option(WITH_LIB_EIGEN_EXAMPLE_BASIC "Simple example using the eigen library." TRUE)
option(WITH_LIB_EIGEN_DEPENDS boost)

# WITH_LIB_CPPFLAGS
option(WITH_LIB_CPPFLAGS "Build and link with C++11 bitmasks library" TRUE)
option(WITH_LIB_CPPFLAGS_EXAMPLE_BASIC "Simple example how to use C++11 bitmasks." TRUE)

# WITH_LIB_PYTHON
option(WITH_LIB_PYTHON "Build with Python library" TRUE)
option(WITH_LIB_PYTHON_EXAMPLE_BASIC "Simple Python embeding example" TRUE)

# WITH_LIB_BOOST
option(WITH_LIB_BOOST "Build with Boost library" TRUE)
option(WITH_LIB_BOOST_EXAMPLE_PYTHON "Simple BOOST::Python example" TRUE)
set(WITH_LIB_BOOST_DEPENDS python)

option(WITH_LIB_STBIMAGE "STB Image Library " TRUE)

option(WITH_LIB_VMATH "Build with the the vmath librariy" TRUE)
#option(WITH_LIB_VMAT_EXAMPLE_BASIC "Build a simple vmat example" TRUE)




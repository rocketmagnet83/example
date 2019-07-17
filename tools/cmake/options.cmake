# debug or release build
option(WITH_DEBUG "Creating a Debug build." OFF)

# options to build the examples
option(WITH_EXAMPLES "Build with all examples. (default:0)" OFF)

set(ALL_LIBS 
	glad 
	glfw
	nlohmann_json
	eigen
	cppflags
	python
	boost
)

option(GENERATE_DOCS "Create the doxygen API documentation" ON)

# WITH_LIB_GLAD
option(WITH_LIB_GLAD "Build and link with the library GLAD" OFF)
option(WITH_LIB_GLAD_EXAMPLE_CBASIC "Build the basic Glad example (default:0)" OFF)

# WITH_LIB_GLFW
option(WITH_LIB_GLFW "Build and link with library GLFW" OFF)
option(WITH_LIB_GLFW_EXAMPLE_CBASIC "Build the basic GLFW C example (default:1)" OFF)
option(WITH_LIB_GLFW_EXAMPLE_CPPBASIC "Build the GLFW CPP wrapper class example (default:1)" OFF)

# WITH_LIB_NLOHMANN_JSON
option(WITH_LIB_NLOHMANN_JSON "Build and link with the library NLOHMANN_JSON" OFF)
option(WITH_LIB_NLOHMANN_JSON_EXAMPLE_BASIC "Buid a simple nlohmann_json example which is showing the most important features." OFF)

# WITH_LIB_EIGEN
option(WITH_LIB_EIGEN "Build and link with the Eigen library" OFF)
option(WITH_LIB_EIGEN_EXAMPLE_BASIC "Simple example using the eigen library." OFF)

# WITH_LIB_CPPFLAGS
option(WITH_LIB_CPPFLAGS "Build and link with C++11 bitmasks library" OFF)
option(WITH_LIB_CPPFLAGS_EXAMPLE_BASIC "Simple example how to use C++11 bitmasks." OFF)


option(WITH_LIB_PYTHON "Build with Python library" OFF)
option(WITH_LIB_PYTHON_EXAMPLE_BASIC "Simple Python embeding example" OFF)

option(WITH_LIB_BOOST "Build with Boost library" ON)
option(WITH_LIB_BOOST_EXAMPLE_PYTHON "Simple BOOST::Python example" ON)


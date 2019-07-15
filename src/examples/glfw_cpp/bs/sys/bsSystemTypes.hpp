
#ifndef BS_SYS_BSSYSTEM_TYPES_HPP
#define BS_SYS_BSSYSTEM_TYPES_HPP

#include <iostream>

/**
 * Error code and message from the GLFW library.
 */
struct bsSystemError
{
	int code;
	std::string msg;
};

/**
 * Version information for the GLFW library.
 */
struct bsGLFWVersion
{
	int majorVersion;				/** The GLFW major version */
	int minorVersion;				/** The GLFW minor version */
	int revisionVersion;			/** The GLFW revision version */
	std::string versionString;		/** The GLFW version string */
};


/**
 * Monitor definition.
 */
struct bsMonitor
{
	std::string name;								/** The name of the monitor */
	int pys_width, pys_height;						/** The physical size of the monitor */
	int posx, posy;									/** The position of the monitor */
	float gamma;									/** The gamma value of the monitor */
	std::vector<GLFWvidmode*> vecResolutions;		/** All available resolutions for the monitor */
};

/**
 * Detailed description of a video mode of a window.
 */
struct bsWindow
{
	int id;
	std::string title;
	int width, height;
	int redBits, greenBits, BlueBits;
	int refreshrate;
	bsMonitor *monitor;
};















#endif

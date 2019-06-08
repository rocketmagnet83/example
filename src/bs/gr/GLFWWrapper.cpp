
#include "GLFWWrapper.hpp"

#include <iostream>


bs::sys::GLFWWrapper* bs::sys::GLFWWrapper::m_instance = nullptr;


bs::sys::GLFWWrapper::GLFWWrapper()
{}

bs::sys::GLFWWrapper::~GLFWWrapper()
{}

/**
 * Function called to initalize the GLFWWrapper.
 */
void bs::sys::GLFWWrapper::init(bs::sys::GLFWWrapper *instance)
{
	m_instance = instance;

	/** Set important system callbacks */
	glfwSetErrorCallback(glfw_ErrorHandler);
	glfwSetMonitorCallback(glfw_MonitorHandler);

	glfwCreateWindow(config["bs"]["gr"]["width"], config["bs"]["gr"]["height"], 

	/** TODO
	 */
	//glfwSetWindowCloseCallback(window, glfw_WindowCloseHandler)
	//glfwSetWindowFocusCallback(window, glfw_WindowFocusHandler);

	/** Initalize GLFW */
	if(!glfwInit())
	{
		std::cout << "Error during initalization of GLFW: ";
		m_isInit = false;
		return;
	}

	m_isInit = true;

	m_timerFrequency = glfwGetTimerFrequency();

	createMainWindow(bs::sys::config["bs"]["gr"]["widht"], bs::sys::config["bs"]["gr"]["height"], bs::sys::config["bs"]["gr"]["bpp"]);

	getVersion();
	getSettings();

	onInit();
}

/**
 * Function called when the application terminates, free all used memory and restore system settings
 * (like the graphic mode).
 */
void bs::sys::GLFWWrapper::exit()
{
	/** Shutdown GLFW */
	if(m_isInit)
	{
#ifdef WITH_DEBUG
		std::cout << "glfwTerminate();" << std::endl;
#endif
		glfwTerminate();
	}
}




/**
 * Get information about all available monitors.
 */
void bs::sys::GLFWWrapper::getSettings()
{
#ifdef WITH_DEBUG
	std::cout << "GLFWWrapper::getSettings()" << std::endl;
#endif
	int count;
	int i;


	GLFWMonitor *monitor = new bs::sys::GLFWMonitor;
	GLFWmonitor **monitors = glfwGetMonitors(&count);
	
	/*
	for(i=0; i<count; i++)
	{
		glfwGetMonitorName(monitors[i]);
#ifdef WITH_DEBUG
		monitors[count]->
#endif
		m_vec_monitors.push_back(monitors[count]);
		count--;
	}
	*/
}

/**
 * Get the GLFW version.
 */
void bs::sys::GLFWWrapper::getVersion()
{
	/** Get the version of the GLFW library */
	glfwGetVersion(
		&m_version.glfwMajorVersion, 
		&m_version.glfwMinorVersion, 
		&m_version.glfwRevisionVersion
	);
	m_version.glfwVersionString = glfwGetVersionString();

#ifdef WITH_DEBUG
	std::cout << "GLFW version: " 
		 << m_glfwMajorVersion << "." 
		 << m_glfwMinorVersion << "."
		 << m_glfwRevisionVersion << "." << std::endl;
	std::cout << "GLFW version string: " << m_glfwVersionString << "." << std::endl;
#endif
}



int createMainWindow(int width, int heght)
{


	
}





/***************************************************************************************************
 * REDIRECT CALLBACK FUNCTIONS FOR GLFW TO BE USED AS CLASS METHODS.
 **************************************************************************************************/

/**
 * Redirect to onError().
 * \param code The error code.
 * \param msg The error message.
 */
void bs::sys::GLFWWrapper::glfw_ErrorHandler(int code, const char *msg)
{
	m_instance->onError(code, msg);
}

/**
 * Redirect to onMonitorChange().
 * \param monitor The monitor that was tunred on or off.
 * \param event Either GLFW_CONNECTED or GLFW_DISCONNECTED.
 */
void bs::sys::GLFWWrapper::glfw_MonitorHandler(GLFWmonitor *monitor, int event)
{
	m_instance->onMonitorChange(monitor, event);
}

/**
 * Redirect to onRedrawWindow().
 * \param monitor The monitor to redraw.
 */
void bs::sys::GLFWWrapper::glfw_RedrawWindow(GLFWmonitor *monitor)
{
	m_instance->onRedrawWindow(monitor);
}





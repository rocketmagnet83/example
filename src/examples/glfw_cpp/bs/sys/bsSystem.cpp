
#include "bsSystem.hpp"

#include <iostream>


bsSystem* bsSystem::m_instance = nullptr;


bsSystem::bsSystem()
{}

bsSystem::~bsSystem()
{}

/**
 * Function called to initalize the bsSystem.
 */
void bsSystem::create(bsSystem *instance)
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

	createMainWindow(bsSystem::config["bs"]["gr"]["width"], bsSystem::config["bs"]["gr"]["height"], bs::sys::config["bs"]["gr"]["bpp"]);

	getVersion();
	getSettings();

	onInit();
}

/**
 * Function called when the application terminates, free all used memory and restore system settings
 * (like the graphic mode).
 */
void bsSystem::destroy()
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
void bsSystem::getSettings()
{
#ifdef WITH_DEBUG
	std::cout << "bsSystem::getSettings()" << std::endl;
#endif
	int count;
	int i;

	bsMonitor *monitor = new bsMonitor;
	bsMonitor **monitors = glfwGetMonitors(&count);
	
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
void bsSystem::getVersion()
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



int bsSystem::createMainWindow(int width, int heght)
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
void bsSystem::glfw_ErrorHandler(int code, const char *msg)
{
	m_instance->onError(code, msg);
}

/**
 * Redirect to onMonitorChange().
 * \param monitor The monitor that was tunred on or off.
 * \param event Either GLFW_CONNECTED or GLFW_DISCONNECTED.
 */
void bsSystem::glfw_MonitorHandler(GLFWmonitor *monitor, int event)
{
	m_instance->onMonitorChange(monitor, event);
}

/**
 * Redirect to onRedrawWindow().
 * \param monitor The monitor to redraw.
 */
void bsSystem::glfw_RedrawWindow(GLFWmonitor *monitor)
{
	m_instance->onRedrawWindow(monitor);
}





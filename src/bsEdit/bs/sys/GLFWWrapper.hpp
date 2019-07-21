#ifndef BS_APP_GLFWWRAPPER_HPP
#define BS_APP_GLFWWRAPPER_HPP

#include <nlohmann/json.hpp>

#ifdef __cplusplus
extern "C" {
#include "glad/glad.h"
#include "GLFW/glfw3.h"
}
#endif

#include <string>
#include <vector>


nlohmann::json default_config = 
{"bs", 
	{"gr", {
		"width", 800,
		"height", 1024,
		"bpp", 24,
		"title", "GLFWWrapper version 0.1"
   },
},
};

/**
 * Error code and message from the GLFW library.
 */
struct SystemError
{
	int code;
	std::string msg;
};


/**
 * Version information for the GLFW library.
 */
struct SystemVersion
{
	int glfwMajorVersion;				/** The GLFW major version */
	int glfwMinorVersion;				/** The GLFW minor version */
	int glfwRevisionVersion;			/** The GLFW revision version */
	std::string glfwVersionString;		/** The GLFW version string */
};


/**
 * Description of a monitor.
 */

/**
 * Detailed description of a video mode of a window.
 */
struct WindowDetails
{
	std::string title;
	int width, height;
	int redBits, greenBits, BlueBits;
	int refreshrate;
	Monitor *monitor;
};

/**
 * Monitor definition.
 */
struct Monitor
{
	std::string name;								/** The name of the monitor */
	int pys_width, pys_height;						/** The physical size of the monitor */
	int posx, posy;									/** The position of the monitor */
	float gamma;									/** The gamma value of the monitor */
	std::vector<GLFWvidmode*> vecResolutions;		/** All available resolutions for the monitor */
};


/**
 * \author Steven Truppe
 * \copyright Copyright (c), 2919 by Steven Truppe
 * 
 * GLFW C++ wrapper class.
 * You must inherit this class and overwrite the methods to work with the GLFW C-API.
 */
class GLFWWrapper {
public:
    GLFWWrapper();
    virtual ~GLFWWrapper();

	virtual void init(GLFWWrapper *instance);
    virtual void exit();

	virtual void run();

	int createMainWindow(int width, int height);
	int getMonitor(Monitor &monitor);
	void setWindowIcon(Window *window, int count, const GLFWimage *images);
	int addWindow(Window *window);
	int delWindow(Window *window);
	
	uint64_t getTime();

private:

	/**
	 * General GLFW functions
	 */


	/**
	 * GLFW C++ callback functions.
	 */
    virtual void onInit();				/** called as last from ::init() */
	virtual void onShutDown();			/** called on last from ::exit() */

    virtual void onError(int code, const char *msg);
	virtual void onMonitorChange(GLFWmonitor *monitor, int event);
	virtual void onRedrawWindow(GLFWmonitor *monitor);
	virtual void onWindowIconify(GLFWwindow *window);


    virtual void onResizeWindow(GLFWwindow *wnd, int width, int height);
    virtual void onKeyUp(GLFWwindow *wnd, int key, int scancode, int action);
    virtual void onKeyDown(GLFWwindow *wnd, int key, int scancode, int action);
	virtual void onMouseDragBegin(GLFWwindow *wnd, int &startx, int &starty);
	virtual void onMouseDragEnd(GLFWwindow *wnd, int &endx, int &endy);
    virtual void onMouseMove(GLFWwindow *wnd, int x, int y);
    virtual void onMouseWheel(GLFWwindow *wnd, int scroll);
    virtual void onDraw(GLFWwindow *wnd);
    virtual void onProceed();

	
protected:
    static GLFWWrapper *m_instance;					/** Static instance of the wrapper class. */


	bool			m_isInit;							/** Is the library successfully initalized ? */
	SystemVersion	m_version;							/** The version of the GLFW library in use. */
	SystemError		m_lastError;						/** The last GLFW error occoured. */
	uint64_t		m_timerFrequency;					/** Frequency of the timer function */

	std::vector<Monitor*> m_vecMonitors;				/** A vector with all monitors available. */

	void getSettings();
	void getVersion();

    /***********************************************************************************************
     * GLFW callback functions.
     **********************************************************************************************/

    static void glfw_ErrorHandler(int code, const char *msg);
	static void glfw_MonitorHandler(GLFWmonitor *monitor, int event);
	static void glfw_WindowCloseHandler(GLFWwindow *window);
	static void glfw_WindowFocusHandler(GLFWwindow *window);

    static void glfw_RedrawWindow(GLFWmonitor *monitor);
    static void glfw_ResizeWindow(GLFWmonitor *monitor);
    static void glfw_KeyEvent(GLFWwindow *window, int key, int scancode, int action, int mod);
    static void glfw_MouseMoveEvent(GLFWwindow *window, int &x, int &y);
    static void glfw_MouseWheelEvent();
    static void glfw_CloseWindow(GLFWwindow *window);
};	/** class GLFWWrapper */


/**
 * This macro is used to create an instance of the class that creates the application,
 * call .init() and .run() to init and start the application (to support the Windows
 * platform it also uses WinMain instead of main).
 */
#if defined _WIN32
#define MAIN_RUNAPP(APP)                            \
int CALLBACK WinMain(HINSTANCE hInstance,           \
                     HINSTANCE hPrevInstance,       \
                     LPSTR lpCmdLine,               \
                     int nCmdShow)                  \
{                                                   \
    APP *app = new APP;                             \
	app->init(app);									\
    app->run();                                     \
    app->exit();                                    \
    delete app;                                     \
    return 0;                                       \
}
#elif defined __linux__ || defined __APPLE__
#define MAIN_RUNAPP(APP)                            \
int main(int argc, const char ** argv)              \
{                                                   \
    APP *app = new APP;                             \
	app->init(app);									\
    app->run();	                                    \
	app->exit();									\
    delete app;                                     \
    return 0;                                       \
}
#else
#error Undefined platform!
#endif


#endif /** #ifdef BS_GLFW_HEADER_H */

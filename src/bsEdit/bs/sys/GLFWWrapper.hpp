#ifndef _GLFWWRAPPER_HPP__
#define _GLFWWRAPPER_HPP__

#include <nlohmann/json.hpp>
#include <iostream>

#ifdef __cplusplus
extern "C" {
#include "glad/glad.h"
#include "GLFW/glfw3.h"
}
#endif
#include <string>
#include <vector>

using nlohmann::json;

auto default_config = R"(
{
	"bs":{
		"gr": {
			"width": 800,
			"height": 1024,
			"bpp": 24,
			"title": "GLFWWrapper version 0.1",
			"bg-color": {
				"r": 1.0,
				"g": 1.0,
				"b": 1.0
			}
	   }
	}
}
)"_json;


/**
 * Error code and message from the GLFW library.
 */
struct glSystemError
{
	int code;
	std::string msg;
};


/**
 * Description of a monitor.
 */


/**
 * \author Steven Truppe
 * \copyright Copyright (c), 2919 by Steven Truppe
 * 
 * GLFW C++ wrapper class.
 * You must inherit this class and overwrite the methods to work with the GLFW C-API.
 */
class GLFWWrapper {
public:
	static GLFWWrapper* getInstance();
    virtual void exit();

	virtual void run();

//	WindowManager wnd_manager;
//	ShaderManager shd_manager;


	uint64_t getTime();

private:

	/**
	 * General GLFW functio
	 * 
	 * ns
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
    GLFWWrapper();
    virtual ~GLFWWrapper();

    static GLFWWrapper *m_instance;					/** Static instance of the wrapper class. */


	bool			m_isInit;							/** Is the library successfully initalized ? */
	//SystemVersion	m_version;							/** The version of the GLFW library in use. */
	//SystemError		m_lastError;						/** The last GLFW error occoured. */
	uint64_t		m_timerFrequency;					/** Frequency of the timer function */

	//std::vector<Monitor*> m_vecMonitors;				/** A vector with all monitors available. */

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

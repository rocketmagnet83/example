#ifndef BS_SYS_SYSTEM_HPP
#define BS_SYS_SYSTEM_HPP

#include <nlohmann/json.hpp>

#ifdef __cplusplus
extern "C" {
#include "glad/glad.h"
#include "GLFW/glfw3.h"
}
#endif

#include <string>
#include <vector>

#include "bsBaseTypes.hpp"
#include "bsSystemTypes.hpp"



nlohmann::json config = 
{"bs", 
	{"gr", {
		"width", 1024,
		"height", 768,
		"bpp", 24,
		"title", "bsSystem example"
   },
},
};


/**
 * \author Steven Truppe
 * \copyright Copyright (c), 2919 by Steven Truppe
 * 
 * GLFW C++ wrapper class.
 * You must inherit this class and overwrite the methods to work with the GLFW C-API.
 */
class bsSystem {
public:
    bsSystem();
    ~bsSystem();

	void create(bsSystem *instance);
    void destroy();

	virtual void run();

	int createMainWindow(int width, int height);
	void setWindowIcon(bsWindow *window, int count, const GLFWimage *images);
	int addWindow(bsWindow *window);
	int delWindow(bsWindow *window);
	
	int getMonitor(bsMonitor &monitor);
	
	uint64_t getTime();

private:


    void onInit();				/** called as last from ::init() */
	void onShutDown();			/** called on last from ::exit() */
	
	void getSettings();			/** Get the GLFW settings (like how many monitors, resolutions,
								 etc. */
	void getVersion();			/** Get the version of the GLFW library. */

protected:
	/**
	 * GLFW C++ callback functions.
	 */
    void onError(int code, const char *msg);
	void onMonitorChange(GLFWmonitor *monitor, int event);
	void onRedrawWindow(GLFWmonitor *monitor);
	void onWindowIconify(GLFWwindow *window);

    void onResizeWindow(GLFWwindow *wnd, int width, int height);
    void onKeyUp(GLFWwindow *wnd, int key, int scancode, int action);
    void onKeyDown(GLFWwindow *wnd, int key, int scancode, int action);
	void onMouseDragBegin(GLFWwindow *wnd, int &startx, int &starty);
	void onMouseDragEnd(GLFWwindow *wnd, int &endx, int &endy);
    void onMouseMove(GLFWwindow *wnd, int x, int y);
    void onMouseWheel(GLFWwindow *wnd, int scroll);
    void onDraw(GLFWwindow *wnd);
    void onProceed();

    static bsSystem *m_instance;						/** Static instance of the wrapper class. */
	bool			m_isInit;							/** Is the library successfully initalized ? */
	bsGLFWVersion	m_version;							/** The version of the GLFW library in use. */
	bsSystemError	m_lastError;						/** The last GLFW error occoured. */
	uint64			m_timerFrequency;					/** Frequency of the timer function */

	std::vector<bsMonitor*> m_vecMonitors;				/** A vector with all monitors available. */


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

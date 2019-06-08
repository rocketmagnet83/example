
#ifndef _BS_SYS_TYPES_HEADER_
#define _BS_SYS_TYPES_HEADER_




enum TWindowState
{
	kWindowStateNormal = 0,
	kWindowStateMaximized,
	kWindowStateMinimized,
	kWindowStateFullscreen
};


/** Constants with all System events **/
enum TEventType
{
	/**
	 * Window events
	 */
	kWindowMove = 0,
	kWindowMaximize,
	kWindowMinimize,
	kWindowActivate,
	kWindowDeactivate,
	kWindowClose,
	kWindowUpdate,

	/**
	 * Keyboard events
	 */
	kEventKeyDown,
	kEventKeyUp,

	/**
	 * Mouse events
	 */
	kEventMouseMove,
	kEventMouseDrag,
	kEventMouseWheel,
	kEventMouseButtonUp,
	kEventMouseButtonDown,

	kEventTimer
};









#endif

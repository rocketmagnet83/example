
#ifndef _BS_SYS_TYPES_HEADER_
#define _BS_SYS_TYPES_HEADER_


typedef char int8;
typedef unsigned char uint8;
typedef short int16;
typedef unsigned short ushort16;
typedef int int32;
typedef unsigned int uint32;

#ifdef _MSC_VER
typedef __int64 int64;
typedef unsigned __int64 uint64;
#else
typedef long long int64;
typedef unsigned long long uint64;
#endif








typedef void *TUserDataPtr;

/**
 * The states a window can have.
 */
enum TWindowState
{
	kWindowStateNormal = 0,
	kWindowStateMaximized,
	kWindowStateMinimized,
	kWindowStateFullscreen
};


/** 
 * Constants with all System events 
 */
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

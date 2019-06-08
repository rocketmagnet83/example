/** \file
 * \ingroup GHOST
 * Declaration of GHOST_IEvent interface class.
 */

#ifndef __BS_SYS_IEVENT_HEADER__
#define __BS_SYS_IEVENT_HEADER__

#include <stddef.h>
#include "bs/sys/Types.h"

class GHOST_IWindow;

/**
 * Interface class for events received from the System.
 * You should not need to inherit this class. The system will pass these events
 * to the IEventConsumer::processEvent() method of event consumers.<br>
 * Use the getType() method to retrieve the type of event and the getData()
 * method to get the event data out. Using the event type you can cast the
 * event data to the correct event data structure.
 * \see IEventConsumer#processEvent
 * \see TEventType
 */
class GHOST_IEvent
{
public:
	/**
	 * Destructor.
	 */
	virtual ~GHOST_IEvent()
	{
	}

	/**
	 * Returns the event type.
	 * \return The event type.
	 */
	virtual GHOST_TEventType getType() = 0;

	/**
	 * Returns the time this event was generated.
	 * \return The event generation time.
	 */
	virtual GHOST_TUns64 getTime() = 0;

	/**
	 * Returns the window this event was generated on,
	 * or NULL if it is a 'system' event.
	 * \return The generating window.
	 */
	virtual GHOST_IWindow *getWindow() = 0;

	/**
	 * Returns the event data.
	 * \return The event data.
	 */
	virtual GHOST_TEventDataPtr getData() = 0;

#ifdef WITH_CXX_GUARDEDALLOC
	MEM_CXX_CLASS_ALLOC_FUNCS("GHOST:GHOST_IEvent")
#endif
};

#endif // __BS_SYS_IEVENT_HEADER__


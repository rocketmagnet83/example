
#ifndef BS_SYS_IEVENT_HEADER_HPP
#define BS_SYS_IEVENT_HEADER_HPP


#include "bsIEvent.hpp"

/**
 * Interface class for objects that are interested in recieving events. To recieve events an object has
 * to be created that inherits this class and implement the processEvent() method. They should then be
 * registered with the system so that they can recieve system events.
 *
 *
 *
 */
class bsIEventConsumer
{
public:
	virtual ~bsIEventConsumer()
	{}

	virtual bool processEvent(bsIEvent *event) = 0;
}







#endif

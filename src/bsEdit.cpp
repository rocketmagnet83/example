

#include "bs/sys/System.hpp"
#include "bs/sys/Event.hpp"



class bsEdit : public System
{
public:
	bsEdit();
	~bsEdit();

	/** This is the first function called by the user to start event processing */
	void start();

	/** Stop the application and close all windows */
	void stop();

	/** Called every frame for per-frame calculations (physics) */
	void proceed();

	/** Draw all windows that need a redraw */
	void draw();

private:


protected:
	void processEvent(IEvent &event);



};


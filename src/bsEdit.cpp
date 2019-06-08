

#include "bs/sys/System.hpp"
#include "bs/sys/IEvent.hpp"

class bsEdit : public System
{
public:
	bsEdit();
	~bsEdit();

private:


protected:
	void processEvent(IEvent &event);



};


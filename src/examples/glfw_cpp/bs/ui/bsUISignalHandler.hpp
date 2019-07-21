
#ifndef _UI_SIGNALHANDLER_H_
#define _UI_SIGNALHANDLER_H_



class bsUISignalHandler {
public:
	bsUISignalHandler();
	virtual ~bsUISignalHandler();


protected:
	virtual void handleSignal() = 0;

};


#endif

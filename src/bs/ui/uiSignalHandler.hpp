
#ifndef _UI_SIGNALHANDLER_H_
#define _UI_SIGNALHANDLER_H_



class uiISignalHandler {
public:
	uiISignalHandler();
	virtual ~uiISignalHandler();




protected:
	void handleSignal() = 0;



};


#endif

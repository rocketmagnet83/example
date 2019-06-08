


//#include "bs/app/System.hpp"

//#include "bsUltimate.hpp"


#include "bs/sys/GLFWWrapper.hpp"


#include <iostream>


class System : public bs::sys::GLFWWrapper
{
public:
    System()
    {}

    ~System()
    {}

	/**
	 * Called after the ::init() function has finished 
	 */
    void onInit()
    {
#ifdef WITH_DEBUG
		std::cout << "onInit();" << std::endl;
#endif

//        wnd->setLayout(new GridLayout());
//        auto button = wnd->add(new bsUINodeButton("Press Me"));
//        button->setSignalHandler(this->handleQuitButton);
    
	}

	/** 
	 * called every 
	 * frame 
	 **/
	void onProceed()
	{
		std::cout << "Welcome";
	}

	/**
	 * Main event loop.
	 */
	void run()
	{
		std::cout << "System::run();" << std::endl;


	}


};

/** Start init and run application */


MAIN_RUNAPP(System)

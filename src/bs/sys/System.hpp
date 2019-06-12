/**
 * \package System
 *
 *
 */
#ifndef _BS_SYS_SYSTEM_HEADER_
#define _BS_SYS_SYSTEM_HEADER_

#include <nlohmann/json.hpp>
#include "../gr/GLFWWrapper.hpp"


using json = nlohmann::json;
/**
 * Main system class that handles getting input, init opengl, setup SubApplications, error handling,
 * etc.
 *
 *
 *
 *
 */
class System : public GLFWWrapper
{
public:
	System* getSystem();
	void destroySystem();

	int loadJSONConfigFile(const char *fn);
	int loadJSONConfig(nlohmann::json json);


private:
	void init();
	void shutdown();

protected:
	System();
	~System();




};

#endif


#ifndef BS_MESH_OBJECT_HPP
#define BS_MESH_OBJECT_HPP



#include<string>



namespace bs {
namespace gr {

/**
 * Base class for all mesh loaders (all supported formats).
 *
 */
class IMeshLoader
{
public:
	IMeshLoader(const char *fname);
	virtual ~IMeshLoader();

	virtual int load(const char *fname) = 0;

private:


protected:
}; /** endof class */


} /** endof namespace std */
} /** endof namespace ns */







#endif

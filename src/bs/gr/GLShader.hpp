
#ifndef BS_GR_GLSHADER_HPP
#define BS_GR_GLSHADER_HPP


#ifdef __cplusplus
extern "C" {
#include "glad/glad.h"
}
#endif

#include <string>


namespace bs {
namespace gr {

class GLShader
{
public:
	GLShader();
	~GLShader();

	int loadShaderFromFile(GLuint type, const char *fname);
	int loadShaderFromString(const std::string shaderSource);

private:

protected:
	GLuint m_type;
	GLuint m_shader;


}; /** class GLShader */

} /** namespace gr */
} /** namespace bs */


#endif


#ifndef BS_GR_GLPROGRAM_HPP
#define BS_GR_GLPROGRAM_HPP


#ifdef __cplusplus
extern "C" {
#include "glad/glad.h"
}
#endif

#include <string>
#include <vector>

#include "GLShader.hpp"


namespace bs {
namespace sys {

class GLProgram
{
public:
	GLProgram();
	~GLProgram();

	int addShadeg(GLShader *shader);
	int removeShader(GLShader *shader);

	int linkShaders();
	int createProgram();

private:

protected:
	GLuint program;
	std::vector<GLuint> vecShaders;	

}; /* class GLProgram */

} /** namespace gr */
} /** namepsace bs */

#endif

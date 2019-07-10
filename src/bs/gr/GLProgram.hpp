
#ifndef BS_GR_GLPROGRAM_HEADER
#define BS_GR_GLPROGRAM_HEADER


#ifdef __cplusplus
extern "C" {
	#include <glad/glad.h>
}
#endif

#include <string>
#include <vector>

#include "GLShader.hpp"


class GLProgram
{
public:
	GLProgram();
	~GLProgram();

	int addShader(GLShader *shader);
	int removeShader(GLShader *shader);

	int linkShaders();
	int compileProgram();

private:

protected:
	GLuint program;
	std::vector<GLuint> vecShaders;

	

}; /* class GLProgram */


#endif

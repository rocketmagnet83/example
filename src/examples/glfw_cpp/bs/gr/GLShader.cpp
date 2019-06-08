
#include "GLShader.hpp"

#include <fstream>


bs::gr::GLShader::GLShader()
{
	m_shader = 0;
}

bs::gr::GLShader::~GLShader()
{
}


int bs::gr::GLShader::loadShaderFromFile(GLuint type, const char *fname)
{
	std::ifstream file;
	std::string tmp, fin;
	const char *c_str;

	/** load shader source from file */
	file.open(fname);
	if(file.is_open())
	{
		while(std::getline(file, tmp))
		{
			fin += tmp + "\n";
		}
	}else{
		return -1;
	}

	c_str = fin.c_str();

	m_type = type;
	m_shader = glCreateShader(type);
	glShaderSource(m_shader, 1, &c_str, NULL);

}

int bs::gr::GLShader::loadShaderFromString(std::string shaderSource)
{

}


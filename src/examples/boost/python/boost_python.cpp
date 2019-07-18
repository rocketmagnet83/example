

#include <iostream>
#include <boost/python.hpp>


char const* greet()
{
   return "hello, world";
}

BOOST_PYTHON_MODULE(hello_ext)
{
    using namespace boost::python;
    def("greet", greet);
}

int main(int argc, char **argv)
{
	std::cout << "Boost:Python module example 01" << std::endl;

	wchar_t *program = Py_DecodeLocale(argv[0], NULL);
    if (program == NULL) {
        fprintf(stderr, "Fatal error: cannot decode argv[0]\n");
        exit(1);
    }
    Py_SetProgramName(program);  /* optional but recommended */
    Py_Initialize();
    PyRun_SimpleString("import hello_ext\print(hello_ext.greet())\n");

    if (Py_FinalizeEx() < 0) {
        exit(120);
    }
    PyMem_RawFree(program);


}

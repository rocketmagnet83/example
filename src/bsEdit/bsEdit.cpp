

#include <iostream>

class bsApplication_bsEdit
{
public:
	bsApplication_bsEdit();
	~bsApplication_bsEdit();

private:


protected:




};


int main(int argc, char **argv)
{
	std::cout << "bsEdit version 0.01" << std::endl;
	std::cout << "Starting server ... " << std::endl;

	bsSystem::createInstance();

	return 0;
}

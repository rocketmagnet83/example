
#include <nlohmann/json.hpp>
#include <iostream>

using json = nlohmann::json;


auto config = R"(
{
	"gr":{
		"width": 640,
		"height": 480
	}
}
)"_json;


int main(int argc, char **argv)
{
	std::cout << "Try to load external json file: ";
}

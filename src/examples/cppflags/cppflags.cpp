
#include <iostream>
#include <flags/flags.hpp>

enum class MyEnum 
{ 
	Button1 = 1 << 0, 
	Button2 = 1 << 1 
};
ALLOW_FLAGS_FOR_ENUM(MyEnum)

int main() {
  auto mask1 = MyEnum::Button1 | MyEnum::Button2; // set flags Value1 and Value 2
  if (mask1 & MyEnum::Button1) 
  {
	  std::cout << "Button1 - true" << std::endl;
  }
  if(mask1 & MyEnum::Button2)
  {
	  std::cout << "Button2 - true" << std::endl;
  }
}

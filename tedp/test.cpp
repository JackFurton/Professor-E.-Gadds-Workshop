#include <iostream>

int main()
{
    for (int arg : {-3, 2, 1, 0, 1, 2, 3})
            std::cout << isodd(arg) << ' ';
}

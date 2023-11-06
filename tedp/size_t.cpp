#include <array>
#include <cstddef>
#include <iostream>

int main()
{
    std::array<std::size_t, 10> a;

    for (auto i = 0uz; i != a.size(); ++i)
        std::cout << (a[i] = i) << ' ';
}

#include <iostream>

void incr(int &n)
    [[ expects: 3 == n ]]
    [[ ensures: 4 == n ]]
{
    ++n;
}

int main()
{
    int n = 3;
    std::cout << n << std::endl;
    incr(n); // n == 4
    std::cout << n << std::endl;

    return 0;
}


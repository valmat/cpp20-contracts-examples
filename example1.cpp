#include <iostream>

int foo(int x, int y)
    [[ expects: x > y ]]   // precondition  #1
    [[ expects: y > 0 ]]   // precondition  #2
    [[ ensures r: r < x ]] // postcondition #3
{
    int z = (x - x%y) / y;
    [[ assert: z >= 0 ]];  // assertion
    return z;
}

int main()
{
    std::cout << foo(117, 20) << std::endl;
    std::cout << foo(10,  20) << std::endl; // <-- contract violation #1
    std::cout << foo(100, -5) << std::endl; // <-- contract violation #2

    return 0;
}


#include <iostream>

struct X
{
protected:
    int m = 5;
public:
    int foo(int n)
        [[expects: n < m]]
    {
        return n*n;
    }
};

int main()
{
    std::cout << X().foo(10) << std::endl;

    return 0;
}


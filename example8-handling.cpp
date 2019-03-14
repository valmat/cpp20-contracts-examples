#include "violation_handler.h"
#include <iostream>

int foo(int n)
    [[expects: n < 10]]
{
    return n*n;
}

int main()
{
    foo(100);
    return 0;
}


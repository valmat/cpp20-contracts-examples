#include "violation_handler.h"

int foo(int n)
    [[expects: n < 10]]
{
    return n*n;
}

int main()
{
    foo(100); // <-- contract violation
    return 0;
}
#include "violation_handler.h"

int foo(int n)
    [[ ensures axiom   r : r < 10  ]]
    [[ ensures default r : r < 40  ]]
    [[ ensures audit   r : r < 70  ]]
{
    return 2 * n;
}

int main()
{
    foo(40);
    foo(30);

    return 0;
}
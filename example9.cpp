#include "violation_handler.h"

int foo(int n)
    [[ expects axiom   : n < 100 ]]
    [[ expects default : n < 200 ]]
    [[ expects audit   : n < 300 ]]
{
    return 2 * n;
}

int main()
{
    foo(350); // audit
    foo(250); // default
    // foo(150); // axiom

    return 0;
}
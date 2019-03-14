#include <iostream>
#include "contract"

void violation_handler(const std::contract_violation&)
{
    throw std::exception();
}

int foo(int n) noexcept
    [[ expects: n  > 0 ]]
{
    return n*n;
}

int main()
{
    foo(0);

    return 0;
}
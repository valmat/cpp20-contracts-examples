int foo(int n)
    [[expects axiom: n < 10]]
{
    return n*n;
}

int main()
{
    foo(100);
    return 0;
}

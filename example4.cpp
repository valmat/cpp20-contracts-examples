int foo(int n)
    [[expects: n < 10]]
{
    return n*n;
}

int main()
{
    int (*pfoo)(int n) = &foo;
    pfoo(100); // <-- contract violation

    return 0;
}

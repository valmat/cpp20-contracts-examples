struct X
{
// protected:
    int m = 5;
public:
    int foo(int n)
        [[ expects: n < m ]]
    {
        return n*n;
    }
};

int main()
{
    X().foo(10);

    return 0;
}


struct Base
{
    virtual int foo(int n)
        [[ expects:   n < 10  ]]
        [[ ensures r: r > 100 ]]
    {
        return n*n;
    }
    virtual ~Base() = default;
};

struct Derived1 : Base
{
    virtual int foo(int n) //override
        [[ expects:   n < 10  ]]
        [[ ensures r: r > 100 ]]
    override
    {
        return n*n*2;
    }
    virtual ~Derived1() = default;
};

struct Derived2 : Base
{
    // Inherits contracts from base
    virtual int foo(int n) override
    {
        return n*3;
    }
    virtual ~Derived2() = default;
};


int main()
{

    Derived1 obj1;
    Derived2 obj2;
    obj1.foo(100);
    obj2.foo(100);

    {
        Derived1* pobj1 = new Derived1();
        Derived2* pobj2 = new Derived2();
        pobj1->foo(100);
        pobj2->foo(100);

        delete pobj1;
        delete pobj2;
    }

    {
        Base* pobj1 = new Derived1();
        Base* pobj2 = new Derived2();
        pobj1->foo(100);
        pobj2->foo(100);

        delete pobj1;
        delete pobj2;
    }

    return 0;
}


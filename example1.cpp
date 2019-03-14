
int foo(int x, int y)
    [[ expects: x > y ]]   // precondition  #1
    [[ expects: y > 0 ]]   // precondition  #2
    [[ ensures r: r < x ]] // postcondition #3
{
    int z = (x - x%y) / y;
    [[ assert: z >= 0 ]];  // assertion
    return z;
}

int main()
{
    foo(117, 20);
    foo(10,  20); // <-- contract violation #1
    foo(100, -5); // <-- contract violation #2

    return 0;
}


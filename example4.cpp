int a = 1;
constexpr int b = 100;

constexpr int foo(int n)
  [[ expects: a <= n ]]  // error: `a` is not constexpr
  [[ expects: n <  b ]]  // OK
{
  [[ assert: n > 2*a ]]; // error: `a` is not constexpr
  [[ assert: n < 2*b ]]; // OK
  return 2*n;
}

int main()
{
    foo(50);
    return 0;
}

#include <stdio.h>

int main()
{
    int x=1, y=2, z[10];
    int *xptr;            // ip is a pointer to an int

    xptr = &x;               // ip now points to x
    printf("xptr=%x\n", xptr);   // prints address of x
    printf("contents of xptr=%i\n", x);
    printf("contents of xptr=%i\n", *xptr);

    return 0;
}

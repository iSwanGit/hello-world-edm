#include <stdio.h>

int main() {
  int a = 0;
  goto L2;

L3:
  printf("Hello World!");
  a += 1;

L2:
  if (a <= 1)
    goto L3;

  return 0;
}

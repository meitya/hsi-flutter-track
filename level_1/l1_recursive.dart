import 'dart:io';

void l1_recursive(value) {
  print(
      'A recursive function that calculate a fibonacci sequence of $value \n');
  for (int i = 0; i < value; i++) {
    stdout.write('${fibonacci(i)} ');
  }
}

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

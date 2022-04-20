import 'dart:io';

bool isPrime(int n) {
  if (n == 1 || n == 0) {
    return false;
  }

  for (int i = 2; i < n; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  print("Give last value \n");
  var a = stdin.readLineSync();
  var N = int.parse(a!);
  for (int i = 1; i <= N; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}

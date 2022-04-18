import 'dart:io';

void main() {
  print("ikki xonali son kiriting \n");
  var N =stdin.readLineSync();
  var num1 = int.parse(N!);
  double res =num1/10;
  print(res.round());
}


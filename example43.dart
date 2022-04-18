import 'dart:io';

void main() {
  print("Birinchi sonni kiriting \n");
  var N =stdin.readLineSync();
  var num1 = int.parse(N!);
  print("Ikkinchi sonni kiriting \n");
  var M =stdin.readLineSync();
  var num2 = int.parse(M!);
  int k;
  k=num1+num2;
  num1 = k-num1;
  num2 = k- num2;
  print("Birinchi son: ${num1}");
  print("Birinchi son: ${num2}");
}


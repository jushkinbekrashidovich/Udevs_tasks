import 'dart:io';

void main() {
  print("Masofani kiriting \n");
  var N =stdin.readLineSync();
  print("1 metr gilam narxini kiriting \n");
  var P =stdin.readLineSync();
  var num1 = int.parse(N!);
  var num2 = int.parse(P!);
  var sum = num1*num2;
  print(sum);
}


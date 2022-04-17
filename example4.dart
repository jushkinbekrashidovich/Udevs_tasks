import 'dart:io';

void main() {
  stdout.write("Masofani kiriting");
  stdout.write("\n");
  var N =stdin.readLineSync();
  stdout.write("1 metr Gilam narxini kiriting");
  stdout.write("\n");
  var P =stdin.readLineSync();
  var num1 = int.parse(N!);
  var num2 = int.parse(P!);
  var sum = num1*num2;
  print(sum);
}


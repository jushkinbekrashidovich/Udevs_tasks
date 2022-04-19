import 'dart:io';

void main() {
  print("Give first value \n");
  var a =stdin.readLineSync();
  print("Give second value \n");
  var b =stdin.readLineSync();
  var num1 = int.parse(a!);
  var num2 = int.parse(b!);
  var sum = num1+num2;
  print(sum);
}


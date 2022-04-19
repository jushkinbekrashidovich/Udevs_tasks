import 'dart:io';

void main() {
  print("Talabalar soni \n");
  var N =stdin.readLineSync();
  print("Niqoblar soni \n");
  var K =stdin.readLineSync();
  var num1 = int.parse(N!);
  var num2 = int.parse(K!);
  var res = num2/num1;
  print(res);
}


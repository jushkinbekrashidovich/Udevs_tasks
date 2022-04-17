import 'dart:io';

void main() {
  stdout.write("Give first value ");
  stdout.write("\n");
  var a =stdin.readLineSync();
  stdout.write("Give second value ");
  stdout.write("\n");
  var b =stdin.readLineSync();
  var num1 = int.parse(a!);
  var num2 = int.parse(b!);
  var sum = num1+num2;
  print(sum);
}


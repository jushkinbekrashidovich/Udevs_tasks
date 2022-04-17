import 'dart:io';

void main() {
  stdout.write("Yilni kiriting");
  stdout.write("\n");
  var N =stdin.readLineSync();
  var num1 = int.parse(N!);
  if(num1%400==0 || (num1%4==0 && num1%100 !=0)){
    print("12/09/${num1}");

  } else {
    print("13/09/${num1}");
  }
}


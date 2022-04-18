import 'dart:io';

void main() {
  print("Yilni kiriting \n");
  var N =stdin.readLineSync();
  var num1 = int.parse(N!);
  if(num1%400==0 || (num1%4==0 && num1%100 !=0)){
    print("kabisa yili");

  } else {
    print("Kabisa yili emas");
  }
}


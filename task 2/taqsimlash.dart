import 'dart:io';

void main() {
  print("Odamlar soni \n");
  var N = stdin.readLineSync();
  print("Xurmolar soni \n");
  var K = stdin.readLineSync();
  var num1 = int.parse(N!);
  var num2 = int.parse(K!);
  int res = num2 ~/ num1;
  if (1 <= num1 && num2 <= 1000) {
    if (res % 2 == 0) {
      print('Yes');
    } else {
      print('No');
    }
  } else{
    print('Please enter correct number');
  }
}

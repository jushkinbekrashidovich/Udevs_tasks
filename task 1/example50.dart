import 'dart:io';

void main() {
  var t1 =stdin.readLineSync();
  int t = int.parse(t1!);
  for (int i=1; i<=t; i++){
    var m1 =stdin.readLineSync();
    int m = int.parse(m1!);
    var n1 =stdin.readLineSync();
    int n = int.parse(n1!);
    if(n*(n+1)/2==m){
      print('1');

    }else {
      print('0');
    }
  }
}



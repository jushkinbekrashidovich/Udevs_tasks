import 'dart:ffi';
import 'dart:io';

void main() {
  stdout.write("Yilni kiriting");
  stdout.write("\n");
  var N =stdin.readLineSync();
  var num1 = int.parse(N!);
  final F=<int>[];
  F[46] = {0,1} as int;
  for(int i=2; i<=45; i++){
    F[i]=F[i-2]+F[i-1];
  }

}


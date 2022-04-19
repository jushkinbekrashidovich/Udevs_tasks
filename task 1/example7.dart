//there is a bug
import 'dart:io';

void main() {
  stdout.write("Son kiriting");
  stdout.write("\n");
  var N =stdin.readLineSync();
  var num1 = int.parse(N!);
  
  List<int> F=[];
  F[46] = {0,1} as int;
  for(int i=2; i<=45; i++){
    F[i]=F[i-2]+F[i-1];
    print(F[num1]*2);
  }

}


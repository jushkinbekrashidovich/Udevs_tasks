

import 'dart:io';

void main() {
  print("Katet uzunligini kiriting ");
  var N =stdin.readLineSync();
  var n = int.parse(N!);
  int k=1;
  for(int i=1; i<=n; i++){
    for(int j=1; j<=i; j++){
      if(i==j){
        print(k);
        print(' \n');
      }
      else{
        print(k);
      }
      k+=1;
    }
  }
}

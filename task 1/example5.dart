//there is a bug

import 'dart:io';

void main() {
  print("Z ni kiriting \n");
  var z =stdin.readLineSync();
  var Z = int.parse(z!);
  int c=0;
  int n,res;
  n=Z>0?Z:-Z;
  if(Z==0){
    print('-1');
  }
  for(int i=1; i*i<=n; i++){
  if(n%i==0){
    c++;
    if(i*i!=n){
      c++;
    }
  }
  if(c%2 ==1 && Z>0){
    res=c+1;
  }
  else{
    res=c;
  }
  
  print(res);
  }

}


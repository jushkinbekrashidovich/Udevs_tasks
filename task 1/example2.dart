 
 import 'dart:io';

void main(){
  print("Give first value \n");
  var a =stdin.readLineSync();
  print("Give second value \n");
  var b=stdin.readLineSync();
  var A = int.parse(a!);
  var B = int.parse(b!);
  if(A>B){
    print(">");
  }else if(A<B){
   print("<");
  } else {
    print("=");
  }
  }
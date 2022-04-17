 
 import 'dart:io';

void main(){
  stdout.write("Give first value ");
  stdout.write("\n");
  var a =stdin.readLineSync();
  stdout.write("Give second value ");
  stdout.write("\n");
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
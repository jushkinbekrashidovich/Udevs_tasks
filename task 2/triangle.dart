import 'dart:math';

class Uchburchak {


  int  Pmetr(int a, int b , int c){
   
    return a+b+c;
  }
  double Yuza(int a, int b , int c){
   int p= a+b+c;
    return sqrt(p*(p-a)*(p-b)*(p-c));
  }

}
void main(){
  Uchburchak uch = new Uchburchak();
  print(uch.Yuza(12, 21, 14));
  print(uch.Pmetr(13, 14, 15));
}
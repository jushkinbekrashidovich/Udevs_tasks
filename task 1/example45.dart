import 'dart:io';
void main(){
    print("Row number: ");
    var N =stdin.readLineSync();
    var rows = int.parse(N!);
    for(int i = 0 ; i< rows; i++)
    {
        for(int j=(rows-i);j>1;j--){
            stdout.write(" ");
        }
        for(int j = 0;j<=i;j++)
        {
            stdout.write("* ");
        }
        stdout.writeln();
    }
}
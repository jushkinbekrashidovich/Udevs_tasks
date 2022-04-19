import 'dart:io';

int reverseDigits(int num)
{
    int rev_dig = 0;
    while (num > 0) {
        rev_dig = rev_dig * 10 + num % 10;
        num = num ~/ 10;
    }
    return rev_dig;
}
int Palindrome(int n)
{
 
    int rev_n = reverseDigits(n);
 
    if (rev_n == n)
        return 1;
    else
        return 0;
}
void main()
{
    print("Son kiriting \n");
    var N =stdin.readLineSync();
    var num1 = int.parse(N!);
    Palindrome(num1) == 1 ? print("tog\'ri") : print("xato");   
   
}
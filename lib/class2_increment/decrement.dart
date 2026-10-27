import 'dart:io';
void main() {
  // int a = 20;
  // int b = 30;
  // int result = a + b;
  //
  // print(result);
  //
  // result +=50 ;
  // print(result);
  //
  // int value = 30;
  // int value2 = 20;
  //
  // bool result = value != value2;
  // print(result);
  //

  // int a = 20;
  // int b = 30;
  // int c = 50;
  //
  // dynamic result = a < b && b < c ;
  // dynamic result1 = a < b || b < c ;
  // dynamic result2 = !(a > b && b > c) ;
  // print(result);
  // print(result1);
  // print(result2);

  int a = 10;

  // print(a++); //10
  // print(++a);// 12
  // print(a++);// 12
  // print(++a);//14
  // print(++a);//15
  // print(a++);//15

  // print(a--); //10
  // print(--a);// 8
  // print(a--);// 8
  // print(--a);//6
  // print(--a);//5
  // print(a--);//5

  // Condition statement if , if else , switch case
  // bool isFriday = true;
  // bool isSataday = false;
  // if (isFriday){
  //   print("we will go on a date ");
  // }
  // condition ? true segment : false segment;
  stdout.write("Enter the value:");
  bool num = bool.parse(stdin.readLineSync()!);
  num == false ? print("valid"): print("invalid"); // important for real work


}

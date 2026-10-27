import 'dart:io';
void main (){
  // stdout.write("Enter the number :");
  // int oddNumber = int.parse(stdin.readLineSync()!);
  // for (oddNumber ; oddNumber <=100; oddNumber++){
  //   if (oddNumber % 2 !=0){
  //   print("odd number : $oddNumber ");
  //   }
  // }
  //
  //
  // stdout.write("Enter the number :");
  // int evenNumber = int.parse(stdin.readLineSync()!);
  // for (evenNumber ; evenNumber <=100; evenNumber++){
  //   if (evenNumber % 2 ==0){
  //     print("Even number : $evenNumber ");
  //   }
  // }
  List<int> abcent = [20,52,65,10,89];
  stdout.write("enter the small number:");
  int number =int.parse(stdin.readLineSync()!);
  for (number; number <=100; number ++ ){
    if (abcent.contains(number)){
      continue;
    }
    print('active student $number');
  }
}
void main() {

  var number = [1, 5, 69, 2, 41, 51, 21, 41];
  var evenNumber = [];
  var oddNumber = [];

  // for (var value in number) {
  //   if (value.isEven) {
  //     evenNumber.add(value);
  //   } else if (value.isOdd) {
  //     oddNumber.add(value);
  //   }
  // }

  // print(evenNumber);
  // print(oddNumber);
  var result = number.where((value)=> value.isOdd);
  print(result.toList());

  var result1 = number.where((value)=> value > 50);
  print(result1.toList());
}

void main() {
  print('==================================================');
  print('          DART PRACTICE TASKS (1 - 22)           ');
  print('==================================================\n');

  // Task 1: Find largest and smallest numbers in a list
  task1();

  // Task 2: Count even and odd numbers in a list
  task2();

  // Task 3: Remove duplicate numbers from a list
  task3();

  // Task 4: Sort a list in ascending order without using sort()
  task4();

  // Task 5: Find the union of two sets
  task5();

  // Task 6: Find the difference between two sets
  task6();

  // Task 7: Students who scored above average marks
  task7();

  // Task 8: Sum and average of numbers in a list
  task8();

  // Task 9: Reverse a list without using reversed property
  task9();

  // Task 10: Find second-largest number in a list
  task10();

  // Task 11: Numbers greater than 50 using where()
  task11();

  // Task 12: Convert numbers into squares using map() and toList()
  task12();

  // Task 13: Calculate total price using fold()
  task13();

  // Task 14: Student with highest marks using a Map
  task14();

  // Task 15: Shopping cart total quantity using Map
  task15();

  // Task 16: Null-aware access (?.)
  task16();

  // Task 17: Nullable list and safely access its first element
  task17();

  // Task 18: Catch FormatException on invalid text conversion
  task18();

  // Task 19: Number analysis (even, odd, prime, duplicates)
  task19();

  // Task 20: Map of employee salaries increased by 10%
  task20();

  // Task 21: Numbers 1 to 100 FizzBuzz with Prime logic
  task21();

  // Task 22: Difference between max and min values in a list
  task22();
}

// ---------------------------------------------------------------------------
// 1. Find the largest and smallest numbers in a list.
// ---------------------------------------------------------------------------
void task1() {
  print('--- Task 1: Largest & Smallest Numbers ---');
  List<int> numbers = [45, 12, 89, 3, 67, 99, 21];
  int largest = numbers[0];
  int smallest = numbers[0];

  for (int n in numbers) {
    if (n > largest) largest = n;
    if (n < smallest) smallest = n;
  }
  print('List: $numbers');
  print('Largest: $largest, Smallest: $smallest\n');
}

// ---------------------------------------------------------------------------
// 2. Count how many even and odd numbers exist in a list.
// ---------------------------------------------------------------------------
void task2() {
  print('--- Task 2: Count Even and Odd Numbers ---');
  List<int> numbers = [12, 17, 24, 33, 40, 55, 68, 71];
  int evenCount = 0;
  int oddCount = 0;

  for (int n in numbers) {
    if (n % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }
  print('List: $numbers');
  print('Even numbers count: $evenCount');
  print('Odd numbers count: $oddCount\n');
}

// ---------------------------------------------------------------------------
// 3. Remove all duplicate numbers from a list.
// ---------------------------------------------------------------------------
void task3() {
  print('--- Task 3: Remove Duplicates ---');
  List<int> numbers = [10, 20, 10, 30, 40, 20, 50, 30];
  List<int> uniqueNumbers = numbers.toSet().toList();

  print('Original List: $numbers');
  print('Without Duplicates: $uniqueNumbers\n');
}

// ---------------------------------------------------------------------------
// 4. Sort a list of numbers in ascending order without using sort().
// ---------------------------------------------------------------------------
void task4() {
  print('--- Task 4: Sort Ascending without sort() (Bubble Sort) ---');
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];
  print('Before Sort: $numbers');

  List<int> sorted = List.from(numbers);
  for (int i = 0; i < sorted.length - 1; i++) {
    for (int j = 0; j < sorted.length - i - 1; j++) {
      if (sorted[j] > sorted[j + 1]) {
        int temp = sorted[j];
        sorted[j] = sorted[j + 1];
        sorted[j + 1] = temp;
      }
    }
  }
  print('After Sort: $sorted\n');
}

// ---------------------------------------------------------------------------
// 5. Find the union of two sets.
// ---------------------------------------------------------------------------
void task5() {
  print('--- Task 5: Union of Two Sets ---');
  Set<int> setA = {1, 2, 3, 4, 5};
  Set<int> setB = {4, 5, 6, 7, 8};
  Set<int> unionSet = setA.union(setB);

  print('Set A: $setA');
  print('Set B: $setB');
  print('Union: $unionSet\n');
}

// ---------------------------------------------------------------------------
// 6. Find the difference between two sets.
// ---------------------------------------------------------------------------
void task6() {
  print('--- Task 6: Difference Between Two Sets ---');
  Set<int> setA = {10, 20, 30, 40, 50};
  Set<int> setB = {30, 40, 60, 70};
  Set<int> differenceSet = setA.difference(setB);

  print('Set A: $setA');
  print('Set B: $setB');
  print('Difference (A - B): $differenceSet\n');
}

// ---------------------------------------------------------------------------
// 7. Given a list of student names and marks, find all students who scored above average.
// ---------------------------------------------------------------------------
void task7() {
  print('--- Task 7: Students Scored Above Average ---');
  Map<String, double> students = {
    'Rifat': 88.5,
    'Tanvir': 65.0,
    'Sakib': 92.0,
    'Rahim': 54.0,
    'Karim': 78.5,
  };

  double total = 0;
  for (double mark in students.values) {
    total += mark;
  }
  double average = total / students.length;

  print('Student Marks: $students');
  print('Class Average: ${average.toStringAsFixed(2)}');

  List<String> aboveAverageStudents = [];
  students.forEach((name, mark) {
    if (mark > average) {
      aboveAverageStudents.add('$name ($mark)');
    }
  });

  print('Students above average: $aboveAverageStudents\n');
}

// ---------------------------------------------------------------------------
// 8. Find the sum and average of all numbers in a list.
// ---------------------------------------------------------------------------
void task8() {
  print('--- Task 8: Sum and Average of List ---');
  List<num> numbers = [10, 25, 30, 45, 50];
  num sum = 0;
  for (num n in numbers) {
    sum += n;
  }
  double average = sum / numbers.length;

  print('List: $numbers');
  print('Sum: $sum');
  print('Average: ${average.toStringAsFixed(2)}\n');
}

// ---------------------------------------------------------------------------
// 9. Reverse a list without using the reversed property.
// ---------------------------------------------------------------------------
void task9() {
  print('--- Task 9: Reverse List without .reversed ---');
  List<String> items = ['Flutter', 'Dart', 'Android', 'Hermes', 'AI'];
  List<String> reversedItems = [];

  for (int i = items.length - 1; i >= 0; i--) {
    reversedItems.add(items[i]);
  }

  print('Original: $items');
  print('Reversed: $reversedItems\n');
}

// ---------------------------------------------------------------------------
// 10. Find the second-largest number in a list.
// ---------------------------------------------------------------------------
void task10() {
  print('--- Task 10: Second-Largest Number ---');
  List<int> numbers = [14, 45, 89, 89, 72, 34, 60];

  // Remove duplicates first
  List<int> unique = numbers.toSet().toList();
  int largest = unique[0];
  int secondLargest = -1;

  for (int n in unique) {
    if (n > largest) {
      secondLargest = largest;
      largest = n;
    } else if (n > secondLargest && n < largest) {
      secondLargest = n;
    }
  }

  print('List: $numbers');
  print('Largest: $largest');
  print('Second Largest: $secondLargest\n');
}

// ---------------------------------------------------------------------------
// 11. Create a new list containing only numbers greater than 50 using where().
// ---------------------------------------------------------------------------
void task11() {
  print('--- Task 11: Filter > 50 Using where() ---');
  List<int> numbers = [23, 56, 12, 89, 50, 99, 45, 78];
  List<int> greaterThan50 = numbers.where((n) => n > 50).toList();

  print('All Numbers: $numbers');
  print('Numbers > 50: $greaterThan50\n');
}

// ---------------------------------------------------------------------------
// 12. Convert a list of numbers into their squares using map() and toList().
// ---------------------------------------------------------------------------
void task12() {
  print('--- Task 12: Squares using map() and toList() ---');
  List<int> numbers = [2, 4, 6, 8, 10];
  List<int> squares = numbers.map((n) => n * n).toList();

  print('Original Numbers: $numbers');
  print('Squared Numbers: $squares\n');
}

// ---------------------------------------------------------------------------
// 13. Use fold() to calculate the total price of a list of products.
// ---------------------------------------------------------------------------
void task13() {
  print('--- Task 13: Total Price using fold() ---');
  List<Map<String, dynamic>> products = [
    {'name': 'Keyboard', 'price': 1200.0},
    {'name': 'Mouse', 'price': 650.0},
    {'name': 'Monitor', 'price': 18500.0},
    {'name': 'Headphone', 'price': 2200.0},
  ];

  double totalPrice = products.fold(
    0.0,
    (previousTotal, product) => previousTotal + (product['price'] as double),
  );

  print('Products: $products');
  print('Total Price: ৳${totalPrice.toStringAsFixed(2)}\n');
}

// ---------------------------------------------------------------------------
// 14. Find the student with the highest marks using a map.
// ---------------------------------------------------------------------------
void task14() {
  print('--- Task 14: Highest Mark Student using Map ---');
  Map<String, int> marks = {
    'Rifat': 95,
    'Tanvir': 88,
    'Sakib': 98,
    'Anik': 91,
  };

  String topStudent = marks.keys.first;
  int highestMark = marks.values.first;

  marks.forEach((name, mark) {
    if (mark > highestMark) {
      highestMark = mark;
      topStudent = name;
    }
  });

  print('Marks Map: $marks');
  print('Top Student: $topStudent with $highestMark marks\n');
}

// ---------------------------------------------------------------------------
// 15. Shopping cart using Map of product names and quantities, calculate total quantity.
// ---------------------------------------------------------------------------
void task15() {
  print('--- Task 15: Shopping Cart Total Quantity ---');
  Map<String, int> cart = {
    'Apple': 5,
    'Banana': 12,
    'Orange': 6,
    'Mango': 8,
  };

  int totalQuantity = 0;
  for (int qty in cart.values) {
    totalQuantity += qty;
  }

  print('Cart: $cart');
  print('Total Items Quantity: $totalQuantity\n');
}

// ---------------------------------------------------------------------------
// 16. Use null-aware access (?.) to safely access a nullable object's property.
// ---------------------------------------------------------------------------
class UserProfile {
  String? bio;
  UserProfile({this.bio});
}

void task16() {
  print('--- Task 16: Null-aware Access (?.) ---');
  UserProfile? user1 = UserProfile(bio: 'Flutter Developer');
  UserProfile? user2 = getNullableUser(false); // may return null

  print('User1 Bio length: ${user1.bio?.length}');
  print('User2 Bio length: ${user2?.bio?.length} (safely returns null without crashing)\n');
}

UserProfile? getNullableUser(bool returnUser) {
  if (returnUser) {
    return UserProfile(bio: 'Active User');
  }
  return null;
}

// ---------------------------------------------------------------------------
// 17. Create a nullable list and safely access its first element.
// ---------------------------------------------------------------------------
void task17() {
  print('--- Task 17: Nullable List Safe First Element Access ---');
  List<int>? nullableList1 = [101, 202, 303];
  List<int>? nullableList2 = getNullableList(false); // returns null
  List<int> emptyList = [];

  print('List 1 first element: ${nullableList1.firstOrNull}');
  print('List 2 (null) first element: ${nullableList2?.firstOrNull}');
  print('List 3 (empty) first element: ${emptyList.firstOrNull}\n');
}

List<int>? getNullableList(bool returnList) {
  if (returnList) {
    return [1, 2, 3];
  }
  return null;
}

// ---------------------------------------------------------------------------
// 18. Catch FormatException when converting invalid text to a number.
// ---------------------------------------------------------------------------
void task18() {
  print('--- Task 18: Catch FormatException ---');
  List<String> inputs = ['123', 'abc45', '78.9'];

  for (String text in inputs) {
    try {
      int parsedValue = int.parse(text);
      print('Successfully parsed "$text" -> $parsedValue');
    } on FormatException catch (e) {
      print('FormatException caught for "$text"! Error: ${e.message}');
    }
  }
  print('');
}

// ---------------------------------------------------------------------------
// 19. Number analysis (even, odd, prime, duplicates)
// ---------------------------------------------------------------------------
bool isPrime(int n) {
  if (n <= 1) return false;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void task19() {
  print('--- Task 19: Number Analysis Program ---');
  List<int> inputList = [2, 3, 4, 5, 6, 7, 8, 9, 11, 4, 7, 12, 13, 2];

  List<int> evens = [];
  List<int> odds = [];
  List<int> primes = [];
  Set<int> seen = {};
  Set<int> duplicates = {};

  for (int n in inputList) {
    // Even & Odd
    if (n % 2 == 0) {
      evens.add(n);
    } else {
      odds.add(n);
    }

    // Prime
    if (isPrime(n) && !primes.contains(n)) {
      primes.add(n);
    }

    // Duplicate detection
    if (!seen.add(n)) {
      duplicates.add(n);
    }
  }

  print('Input Numbers: $inputList');
  print('Even numbers: $evens');
  print('Odd numbers: $odds');
  print('Prime numbers (unique): $primes');
  print('Duplicate values: ${duplicates.toList()}\n');
}

// ---------------------------------------------------------------------------
// 20. Map of employee names and salaries, increase every salary by 10%.
// ---------------------------------------------------------------------------
void task20() {
  print('--- Task 20: Increase Employee Salary by 10% ---');
  Map<String, double> salaries = {
    'Rahim': 30000.0,
    'Karim': 45000.0,
    'Tanvir': 50000.0,
    'Rifat': 60000.0,
  };

  print('Original Salaries: $salaries');

  Map<String, double> updatedSalaries = salaries.map((name, salary) {
    double incremented = salary + (salary * 0.10);
    return MapEntry(name, double.parse(incremented.toStringAsFixed(2)));
  });

  print('After 10% Increment: $updatedSalaries\n');
}

// ---------------------------------------------------------------------------
// 21. Print 1 to 100: Fizz, Buzz, FizzBuzz, or Prime.
// (Prime for prime numbers, except when divisible by both 3 and 5)
// ---------------------------------------------------------------------------
void task21() {
  print('--- Task 21: Numbers 1 to 100 FizzBuzz & Prime ---');
  List<String> output = [];

  for (int i = 1; i <= 100; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      output.add('$i: FizzBuzz');
    } else if (isPrime(i)) {
      output.add('$i: Prime');
    } else if (i % 3 == 0) {
      output.add('$i: Fizz');
    } else if (i % 5 == 0) {
      output.add('$i: Buzz');
    } else {
      output.add('$i');
    }
  }

  // Print first 30 as demo preview
  print(output.take(30).join(', '));
  print('... [Total ${output.length} items evaluated successfully]\n');
}

// ---------------------------------------------------------------------------
// 22. Find the difference between max and min values in a list.
// ---------------------------------------------------------------------------
void task22() {
  print('--- Task 22: Difference Between Max and Min Values ---');
  List<int> numbers = [25, 8, 99, 14, 5, 62, 87];

  int maxVal = numbers[0];
  int minVal = numbers[0];

  for (int n in numbers) {
    if (n > maxVal) maxVal = n;
    if (n < minVal) minVal = n;
  }

  int difference = maxVal - minVal;
  print('List: $numbers');
  print('Max: $maxVal, Min: $minVal');
  print('Difference (Max - Min): $difference\n');
}

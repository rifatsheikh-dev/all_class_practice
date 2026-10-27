// 1. Even or Odd
String evenOrOdd(int number) {
  if (number % 2 == 0) {
    return "Even";
  } else {
    return "Odd";
  }
}

// 2. Find Largest Number
int findLargest(int a, int b, int c) {
  if (a >= b && a >= c) {
    return a;
  } else if (b >= a && b >= c) {
    return b;
  } else {
    return c;
  }
}

// 3. Find Minimum Number
int findSmallest(int a, int b, int c) {
  if (a <= b && a <= c) {
    return a;
  } else if (b <= a && b <= c) {
    return b;
  } else {
    return c;
  }
}

// 4. Celsius to Fahrenheit
double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

// 5. Check Leap Year
bool isLeapYear(int year) {
  if (year % 400 == 0) {
    return true;
  } else if (year % 100 == 0) {
    return false;
  } else if (year % 4 == 0) {
    return true;
  } else {
    return false;
  }
}

// 6. Swap Two Numbers
List<int> swapNumbers(int a, int b) {
  return [b, a];
}

// 7. Calculate Percentage
double calculatePercentage(double obtained, double total) {
  return (obtained / total) * 100;
}

// 8. Calculate Discount
double calculateDiscount(double price, double discount) {
  return price - (price * discount / 100);
}

void main() {
  // Task 1
  print("--- Task 1: Even or Odd ---");
  print("Result: ${evenOrOdd(10)}");

  // Task 2
  print("\n--- Task 2: Find Largest Number ---");
  print("Largest number: ${findLargest(20, 50, 30)}");

  // Task 3
  print("\n--- Task 3: Find Minimum Number ---");
  print("Smallest number: ${findSmallest(20, 50, 10)}");

  // Task 4
  print("\n--- Task 4: Celsius to Fahrenheit ---");
  print("Fahrenheit: ${celsiusToFahrenheit(30)}");

  // Task 5
  print("\n--- Task 5: Check Leap Year ---");
  print("Leap year: ${isLeapYear(2024)}");

  // Task 6
  print("\n--- Task 6: Swap Two Numbers ---");
  int a = 10;
  int b = 20;

  print("Before swapping: a = $a, b = $b");

  List<int> result = swapNumbers(a, b);
  print("After swapping: a = ${result[0]}, b = ${result[1]}");

  // Task 7
  print("\n--- Task 7: Calculate Percentage ---");
  print("Percentage: ${calculatePercentage(80, 100)}%");

  // Task 8
  print("\n--- Task 8: Calculate Discount ---");
  print("Final price: ${calculateDiscount(1000, 20)}");
}

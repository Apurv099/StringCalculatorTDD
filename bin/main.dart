import '../lib/string_calculator.dart';

void main() {
  final calculator = StringCalculator();

  print(calculator.add("")); // Output: 0
  print(calculator.add("1")); // Output: 1
  print(calculator.add("1,2")); // Output: 3
  print(calculator.add("1\n2,3")); // Output: 6
  print(calculator.add("//;\n1;2")); // Output: 3

  try {
    calculator.add("1,-2,-5");
  } catch (e) {
    print(e); // Output: negative numbers not allowed -2, -5
  }
}
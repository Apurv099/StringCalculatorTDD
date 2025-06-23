import '../lib/string_calculator.dart';

void main() {
  final calculator = StringCalculator();

  print(calculator.add("")); // Output: 0
  print(calculator.add("1")); // Output: 1
}
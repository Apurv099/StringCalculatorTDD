import 'package:test/test.dart';
import '../lib/string_calculator.dart';

void main() {
  final calculator = StringCalculator();

  test('returns 0 for an empty string', () {
    expect(calculator.add(''), equals(0));
  });
  
  test('returns the number itself when one number is present', () {
    expect(calculator.add('5'), equals(5));
  });
  
  test('returns the sum of two comma separated numbers', () {
    expect(calculator.add('1,5'), equals(6));
  });
  
  test('returns the sum of any number of comma separated numbers', () {
    expect(calculator.add('1,2,3,4'), equals(10));
  });
  
  test('supports new lines as a delimiter', () {
    expect(calculator.add('1\n2,3'), equals(6));
  });
  test('supports custom delimiters', () {
    expect(calculator.add('//;\n1;2'), equals(3));
  });
}

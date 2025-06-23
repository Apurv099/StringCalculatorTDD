class StringCalculator {
  int add(String numbers) {
    // If the input is empty, return 0
    if (numbers.isEmpty) {
      return 0;
    }

    // Otherwise, parse the number and return
    return int.parse(numbers);
  }
}
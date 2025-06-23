class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    // Check if the input contains commas
    if (numbers.contains(',')) {
      final tokens = numbers.split(',');
      return tokens.map(int.parse).fold(0, (sum, number) => sum + number);
    }

    // Single number case
    return int.parse(numbers);
  }
}
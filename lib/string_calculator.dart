class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    // Replace new lines with commas
    numbers = numbers.replaceAll('\n', ',');

    // Split by comma
    final tokens = numbers.split(',');
    return tokens.map(int.parse).fold(0, (sum, number) => sum + number);
  }
}

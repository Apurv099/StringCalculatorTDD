class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    String delimiters = ',|\n';
    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      final customDelimiter = RegExp.escape(parts[0].substring(2));
      delimiters = customDelimiter;
      numbers = parts.sublist(1).join('\n');
    }

    final tokens = numbers.split(RegExp(delimiters));
    return tokens.map(int.parse).fold(0, (sum, number) => sum + number);
  }
}

class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    List<String> delimiters = [',', '\n'];

    // Check for custom delimiter
    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      final delimiter = parts[0].substring(2);
      delimiters = [delimiter];
      numbers = parts.sublist(1).join('\n');
    }

    // Split input into tokens
    final tokens = numbers.split(RegExp(delimiters.map(RegExp.escape).join('|')));
    final nums = tokens.where((t) => t.isNotEmpty).map(int.parse).toList();

    // Check for negative numbers
    final negatives = nums.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed ${negatives.join(', ')}');
    }

    // Sum the numbers
    return nums.fold(0, (sum, n) => sum + n);
  }
}

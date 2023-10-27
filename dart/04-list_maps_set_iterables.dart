void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List original $numbers');
  print('List Length ${numbers.length}');
  print('Index 0 ${numbers[0]}');
  print('Index last ${numbers.last}');
  print('Revers List ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Iterable $reversedNumbers');
  print('List ${reversedNumbers.toList()}');
  print('Set ${reversedNumbers.toSet()}');
  print('String ${reversedNumbers.toString()}');

  final numbersGreaterThat5 = numbers.where((num) {
    return num > 5;
  });

  print('Numbers greater that 5: $numbersGreaterThat5');
  print('Numbers greater that 5: ${numbersGreaterThat5.toSet().toList()}');
}

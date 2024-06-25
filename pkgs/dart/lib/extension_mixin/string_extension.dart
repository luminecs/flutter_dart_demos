extension StringExtension on String {
  String reverse() => split('').reversed.join('');
}

void main() {
  print('hello'.reverse()); // olleh
}

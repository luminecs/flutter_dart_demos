void main() {
  try {
    throw Exception('Error');
  } catch (e, stackTrace) {
    print('Caught: $e');
    print('Stack trace:\n$stackTrace');
  }
}

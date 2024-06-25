class CustomException implements Exception {
  final String message;

  CustomException(this.message);
}

void riskyOperation() {
  throw CustomException('Something weng wrong');
}

void main() {
  try {
    riskyOperation();
  } catch (e) {
    print('Caught: $e');
  }
}
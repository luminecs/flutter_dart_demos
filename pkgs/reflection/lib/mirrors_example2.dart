import 'dart:mirrors';

@Deprecated("Use newMethod() instead")
void oldMethod(String name) {
  print("Hello, $name!");
}

void newMethod(String name) {
  print("Welcome, $name!");
}

void main() {
  // Get the mirror of the oldMethod function
  final oldMethodMirror = reflect(oldMethod);

  // Check if the function has the deprecated annotation
  // if (oldMethodMirror.metadata.isNot)
}
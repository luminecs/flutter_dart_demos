import 'dart:mirrors';

class MyClass {
  void myMethod() {}
}

void main() {
  ClassMirror mirror = reflectClass(MyClass);
  // Prints all class members
  print(mirror.declarations.keys);
}
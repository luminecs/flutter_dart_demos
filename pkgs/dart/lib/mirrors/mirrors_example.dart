import 'dart:mirrors';

class ExampleClass {
  String name = "Dart";
  int age = 10;
}

void main() {
  ClassMirror classMirror = reflectClass(ExampleClass);

  // Retrieve and print the class name
  print("Class Name: ${classMirror.simpleName}");
  // Class Name: Symbol("ExampleClass")

  // Retrieve and print details about each variable
  classMirror.declarations.forEach((k, v) {
    if (v is VariableMirror) {
      print("Variable: ${MirrorSystem.getName(k)}, Type: ${v.type}");
    }
  });
}
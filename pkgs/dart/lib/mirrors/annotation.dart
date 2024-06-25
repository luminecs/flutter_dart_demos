import 'dart:mirrors';

class MyAnnotation {
  final String description;

  const MyAnnotation(this.description);
}

@MyAnnotation('This is a test class')
class TestClass {}

void main() {
  ClassMirror mirror = reflectClass(TestClass);
  List<InstanceMirror> metadata = mirror.metadata;
  for (var meta in metadata) {
    if (meta.reflectee is MyAnnotation) {
      print(meta.reflectee.description);
    }
  }
}
import 'dart:ffi';

typedef CFunc = Int32 Function(Int32);
typedef DartFunc = int Function(int);

void main() {
  final dylib = DynamicLibrary.open('path/to/library.so');
  final DartFunc square =
      dylib.lookup<NativeFunction<CFunc>>('square').asFunction<DartFunc>();

  print(square(4)); // 16
}

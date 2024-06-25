import 'dart:js' as js;

void main() {
  js.context.callMethod('alert', ['Hello from Dart!']);
}
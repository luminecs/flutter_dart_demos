import 'dart:isolate';

void entryPoint(SendPort sendPort) {
  sendPort.send('Hello from isolate');
}

void main() async {
  var receivePort = ReceivePort();
  await Isolate.spawn(entryPoint, receivePort.sendPort);

  receivePort.listen((message) {
    print(message);
  });
}

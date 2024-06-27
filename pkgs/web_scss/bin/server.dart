import 'dart:io';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_static/shelf_static.dart';
import 'package:sass/sass.dart' as sass;
import '../lib/router.dart';

void main() async {
  // 编译Sass文件
  compileSass();

  // 创建路由器
  final router = createRouter();

  // 创建静态文件处理器
  final staticHandler = createStaticHandler('public', defaultDocument: 'index.html');

  // 创建级联处理器
  final cascade = shelf.Cascade()
      .add(router)
      .add(staticHandler);

  // 创建中间件
  final handler = const shelf.Pipeline()
      .addMiddleware(shelf.logRequests())
      .addHandler(cascade.handler);

  // 启动服务器
  final server = await io.serve(handler, 'localhost', 8080);
  print('Serving at http://${server.address.host}:${server.port}');

  // 监听Sass文件变化
  watchSassFiles();
}

void compileSass() {
  final result = sass.compile('sass/main.scss');
  File('public/styles/main.css').writeAsStringSync(result);
  print('Sass compiled successfully.');
}

void watchSassFiles() {
  Directory('sass').watch(recursive: true).listen((event) {
    if (event.path.endsWith('.scss')) {
      compileSass();
    }
  });
}
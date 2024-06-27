import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:web_scss/template.dart';
import 'package:web_scss/template/example.dart';

Router createRouter() {
  final router = Router();

  router.get('/', (Request request) {
    return Response.ok('Welcome to the home page!');
  });

  router.get('/index', (Request request) {
    return Response.ok(
      File('public/index.html').readAsStringSync(),
      headers: {'content-type': 'text/html'},
    );
  });

  router.get('/test', (Request request) {
    return Response.ok(
      demo(),
      headers: {'content-type': 'text/html'},
    );
  });

  router.get('/pages/a', (Request request) {
    return Response.ok(
      clickToEdit(),
      headers: {'content-type': 'text/html'},
    );
  });

  router.get('/pages/b', (Request request) {
    return Response.ok(
      clickToEdit1(),
      headers: {'content-type': 'text/html'},
    );
  });

  router.get('/about', (Request request) {
    return Response.ok('This is the about page.');
  });

  router.all('/<ignored|.*>', (Request request) {
    return Response.notFound('Page not found');
  });

  return router;
}

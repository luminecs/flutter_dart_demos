import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:web_scss/extentions/response_ext.dart';
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
    return ResponseHtml.ok(demo());
  });

  router.get('/pages/a', (Request request) {
    return ResponseHtml.ok(clickToEdit());
  });

  router.get('/pages/b', (Request request) {
    return ResponseHtml.ok(clickToEdit1());
  });

  router.get('/about', (Request request) {
    return Response.ok('This is the about page.');
  });

  router.all('/<ignored|.*>', (Request request) {
    return Response.notFound('Page not found');
  });

  return router;
}

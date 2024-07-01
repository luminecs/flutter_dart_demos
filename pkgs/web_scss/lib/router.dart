import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:web_scss/extentions/response_ext.dart';
import 'package:web_scss/template.dart';
import 'package:web_scss/template/example.dart';
import 'package:web_scss/template/tachyons_page.dart';
import 'package:web_scss/template/up_emit_html.dart';
import 'package:web_scss/template/up_emit_js.dart';

Router createRouter() {
  final router = Router();

  router.get('/', (Request request) {
    return Response.ok('Welcome to the home page!');
  });

  router.get('/index', (Request request) {
    return ResponseHtml.ok(File('public/index.html').readAsStringSync());
  });

  router.get('/test', (Request request) {
    return ResponseHtml.ok(demo());
  });

  router.get('/pages/a', (Request request) {
    return ResponseHtml.ok(pageA());
  });

  router.get('/pages/b', (Request request) {
    return ResponseHtml.ok(pageB());
  });

  router.get('/up-emit-html', (Request request) {
    return ResponseHtml.ok(upEmitHtml(), withDoctype: true);
  });

  router.get('/up-emit-js', (Request request) {
    return ResponseHtml.ok(upEmitJs(), withDoctype: true);
  });
  
  router.get('/tachyons', (Request request) {
    return ResponseHtml.ok(tachyonsPage(), withDoctype: true);
  });

  router.get('/about', (Request request) {
    return Response.ok('This is the about page.');
  });

  router.all('/<ignored|.*>', (Request request) {
    return Response.notFound('Page not found');
  });

  return router;
}

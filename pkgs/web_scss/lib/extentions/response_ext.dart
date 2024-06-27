import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf.dart' as shelf;

extension ResponseHtml on Response {
  static Response ok(
    Object? body, {
    Map<String, /* String | List<String> */ Object>? headers,
    Encoding? encoding,
    Map<String, Object>? context,
  }) {
    if (headers == null) {
      headers = {'content-type': 'text/html'};
    } else {
      // headers['content-type'] = 'text/html';
      headers.addAll({'content-type': 'text/html'});
    }
    return Response.ok(body,
        headers: headers, encoding: encoding, context: context);
  }
}


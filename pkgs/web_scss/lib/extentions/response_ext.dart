import 'dart:convert';

import 'package:shelf/shelf.dart';

extension ResponseHtml on Response {
  static Response ok(
    String? body, {
    Map<String, /* String | List<String> */ Object>? headers,
    Encoding? encoding,
    Map<String, Object>? context,
    bool withDoctype = false,
  }) {
    if (headers == null) {
      headers = {'content-type': 'text/html'};
    } else {
      // headers['content-type'] = 'text/html';
      headers.addAll({'content-type': 'text/html'});
    }
    if (withDoctype) {
      body = '<!DOCTYPE html>\n$body';
    }
    return Response.ok(body,
        headers: headers, encoding: encoding, context: context);
  }
}

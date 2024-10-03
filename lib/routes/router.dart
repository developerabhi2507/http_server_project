// Central file to register all the routes.

import 'dart:io';
import 'handlers.dart';

void handleRoutes(HttpRequest request) {
  final path = request.uri.path;

  if (request.method == 'GET' && path == '/') {
    serveHomePage(request);
  } else if (request.method == 'POST' && path == '/submit') {
    handleSubmit(request);
  } else {
    request.response
      ..statusCode = HttpStatus.notFound
      ..write('404 Not Found')
      ..close();
  }
}

// A file to handle the routing logic for different HTTP methods like GET, POST, etc.

import 'dart:convert';
import 'dart:io';
import '../services/validation_service.dart';

void serveHomePage(HttpRequest request) async {
  request.response.headers.contentType = ContentType.html;
  await request.response
      ..write('<html><body><h1>Welcome to My Portfolio</h1></body></html>')
      ..close();
}

void handleSubmit(HttpRequest request) async {
  var content = await utf8.decoder.bind(request).join();
  if (validateInput(content)) {
    request.response
      ..write('Data submitted successfully')
      ..close();
  } else {
    request.response
      ..statusCode = HttpStatus.badRequest
      ..write('Invalid data')
      ..close();
  }
}

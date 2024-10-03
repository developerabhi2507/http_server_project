// Utility for logging incoming requests and responses.

import 'dart:io';

void logRequest(HttpRequest request) {
  print('${DateTime.now()} - ${request.method} ${request.uri.path}');
}

void logError(String message) {
  print('${DateTime.now()} - ERROR: $message');
}

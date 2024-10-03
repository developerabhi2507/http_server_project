// Utility for centralized error handling across routes.
import 'dart:io';

void handleError(HttpRequest request, dynamic error) {
  request.response
    ..statusCode = HttpStatus.internalServerError
    ..write('500 Internal Server Error')
    ..close();
}

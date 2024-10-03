import 'dart:io';

void applySecurityHeaders(HttpRequest request) {
  request.response.headers.add('X-Content-Type-Options', 'nosniff');
  request.response.headers.add('X-Frame-Options', 'DENY');
  request.response.headers.add('Strict-Transport-Security', 'max-age=31536000; includeSubDomains');
  request.response.headers.add('Content-Security-Policy', "default-src 'self'");
}

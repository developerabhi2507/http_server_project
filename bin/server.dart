import 'dart:io';
import 'package:http_server_project/routes/router.dart';
import 'package:http_server_project/utils/security_headers.dart';
import 'package:http_server_project/utils/logger.dart';
import 'package:http_server_project/utils/error_handler.dart';

void main() async {
  // Load the SSL certificates
  var securityContext = SecurityContext()
    ..useCertificateChain('certs/cert.pem')
    ..usePrivateKey('certs/key.pem');

  // Bind the HTTPS server to port 8443
  var server = await HttpServer.bindSecure(
    '0.0.0.0', 8443, securityContext,
  );
  print('Server running on https://localhost:8443');
  
  await for (HttpRequest request in server) {
    try {
      applySecurityHeaders(request);  // Apply security headers
      handleRoutes(request);          // Handle request routing
    } catch (e) {
      logError('Error: $e');
      handleError(request, e);        // Error handling
    }
  }
}

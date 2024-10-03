A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.
# Secure HTTPS Dart Server

This project demonstrates a secure HTTP server using HTTPS with Dart. It supports routing, request logging, and security best practices like applying headers and handling errors centrally.

## Features

- HTTPS Support (SSL/TLS)
- Security Headers (X-Content-Type-Options, X-Frame-Options, HSTS, etc.)
- Centralized Error Handling
- Request Logging
- Authentication and Input Validation

## Prerequisites

- Dart SDK installed ([installation instructions](https://dart.dev/get-dart))
- `openssl` for generating SSL certificates (pre-installed on Linux/macOS)

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/developerabhi2507/http_server_project.git
   cd secure_http_server

2. **Install Dart dependencies**:
   ```bash
   dart pub get

3. **Generate SSL Certificates: To run the server over HTTPS, generate a self-signed SSL certificate**:
   ```bash
   openssl req -x509 -newkey rsa:4096 -keyout certs/key.pem -out certs/cert.pem -days 365 -nodes

4. **Run the server: Start the HTTPS server on port 8443**:
   ```bash
   dart run bin/server.dart
   The server will run on https://localhost:8443

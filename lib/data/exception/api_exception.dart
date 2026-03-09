class ApiException implements Exception {
  final String? statusCode;
  final String? status;
  final String? message;
  final dynamic error;

  ApiException({this.statusCode, this.status, this.message, this.error});
}

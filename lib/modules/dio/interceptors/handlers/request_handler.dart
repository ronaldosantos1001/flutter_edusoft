import 'package:dio/dio.dart';

void requestHandler(RequestOptions options, RequestInterceptorHandler handler) async {
  const String token = 'AccessToken';
  if (token.isNotEmpty) {
    options.headers.putIfAbsent('Authorization', () => 'Bearer $token');
  }
  return handler.next(options);
}

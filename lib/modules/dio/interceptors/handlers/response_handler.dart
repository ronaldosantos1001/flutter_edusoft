import 'package:dio/dio.dart';

void responseHandler(Response response, ResponseInterceptorHandler handler) {

  return handler.next(response); // continue
}
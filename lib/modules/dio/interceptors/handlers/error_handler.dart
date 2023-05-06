import 'package:dio/dio.dart';

void errorHandler(DioError e, ErrorInterceptorHandler handler) {
  /*
    Do something with response error. If you want to resolve the request with some custom data，
    you can resolve a `Response` object eg: `handler.resolve(response)`.  
  */
  handler.reject(e);
}

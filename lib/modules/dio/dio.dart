import 'package:dio/dio.dart';
import 'interceptors/log_interceptor.dart';
import 'interceptors/oauth_interceptor_mixin.dart';
import 'settings/network.dart';

class NetworkModule {
  /* This class provides some configurations for a dio instance */
  final Dio _dio;

  NetworkModule(this._dio) {
    _dio.options
      ..connectTimeout = NetworkSettings.connectTimeout
      ..receiveTimeout = NetworkSettings.receiveTimeout
      ..headers = NetworkSettings.headers;
    _dio.interceptors.addAll([logInterceptor, oauthInterceptor]);
    //..options.validateStatus = (status) => true;
  }

  Dio get dio => _dio;
}

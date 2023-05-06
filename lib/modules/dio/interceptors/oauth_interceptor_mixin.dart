import 'package:dio/dio.dart';

import 'handlers/request_handler.dart';
import 'handlers/response_handler.dart';

final oauthInterceptor = InterceptorsWrapper(
  onResponse: responseHandler,
  onRequest: requestHandler,
  onError: null, // errorHandler,
);

import 'package:flutter_edusoft/modules/dio/errors/response_error.dart';
import 'package:flutter_edusoft/src/core/errors/error.dart';
import 'package:dio/dio.dart';

class DioErrorHandleHelper {
  final Set<DioErrorType> _timeoutSet = {
    DioErrorType.receiveTimeout,
    DioErrorType.connectTimeout,
    DioErrorType.sendTimeout,
    DioErrorType.cancel,
  };

  IError handle(DioErrorType error) {
    if (_timeoutSet.contains(error) || error == DioErrorType.response || error == DioErrorType.other) {
      return const ResponseError(message: '', description: '');
    }
    return const ResponseError(message: '', description: '');
  }
}

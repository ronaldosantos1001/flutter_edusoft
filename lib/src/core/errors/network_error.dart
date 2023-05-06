import 'package:flutter_edusoft/src/core/errors/error.dart';

class NetworkError extends IError{

  const NetworkError({
    required String message, 
    String? description, 
    Object? error,
    StackTrace? stack
  }) : super(message: message, description: description, error: error, stack: stack);

}
import 'package:flutter_edusoft/src/core/errors/error.dart';

class ResponseError extends IError {
  static const String defaultMessage = "A solicitação retornou um erro, tente novamente mais tarde.";

  const ResponseError({String message = defaultMessage, String? description})
      : super(message: message, description: description);
}

import 'package:flutter_edusoft/src/core/errors/error.dart';

class CouldNotfetchCensoNames extends IError{

  const CouldNotfetchCensoNames({ String message = defaultMessage, String? description }) : super(message: message, description: description);

  static const String defaultMessage = "Ocorreu um erro ao carregar os dados, tente novamente mais tarde";

}
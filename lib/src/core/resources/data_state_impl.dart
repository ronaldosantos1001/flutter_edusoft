import 'package:flutter/cupertino.dart';
import 'package:flutter_edusoft/src/core/errors/error.dart';
import 'data_state.dart';

class DataSuccess<T> extends IDataState<T> {
  const DataSuccess(T data) : super(data: data, status: DataStatus.success);
}

class DataFailed<T extends IError> extends IDataState<T> {
  const DataFailed(T error) : super(error: error, status: DataStatus.failed);
}

/// Classe que representa o estado de uma operação que retorna dados [T].
///
/// Pode estar nos estados de [DataStatus.success], em que [data] contém o resultado,
/// ou [DataStatus.failed], em que [error] contém o motivo do erro.
/// Apenas um dos campos [data] e [error] pode ser não nulo.
/// Para criar objetos da classe, use [DataState.fromData] ou [DataState.fromError].
@immutable
class DataState<T> extends IDataState<T> {
  /// Cria um objeto [DataState] com [data] e [status] informados.
  const DataState({
    IError? error,
    required T? data,
    required DataStatus status,
  }) : super(error: error, data: data, status: status);

  /// Cria um objeto [DataState] com [error] informado e status [DataStatus.failed].
  const DataState.fromError({required IError error})
      : super(error: error, status: DataStatus.failed);

  /// Cria um objeto [DataState] com [data] informado e status [DataStatus.success].
  const DataState.fromData({required T data})
      : super(data: data, status: DataStatus.success);

  /// Retorna `true` se há dados disponíveis, ou `false` caso contrário.
  bool get hasData => data != null;

  /// Retorna `true` se há um erro disponível, ou `false` caso contrário.
  bool get hasError => error != null;

  /// Retorna `true` se há um erro disponível, ou `false` caso contrário.
  bool get isError => status == DataStatus.failed;

  /// Retorna `true` se há dados disponíveis, ou `false` caso contrário.
  bool get isData => status == DataStatus.success;

  @override
  String toString() {
    return 'DataState<$T>('
        'error: $error, '
        'data: $data, '
        'status: $status'
        ')';
  }
}

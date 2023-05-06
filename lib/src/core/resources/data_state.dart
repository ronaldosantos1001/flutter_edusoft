import 'package:flutter_edusoft/src/core/errors/error.dart';

enum DataStatus { success, failed }

abstract class IDataState<T> {
  final T? data;
  final IError? error;
  final DataStatus status;

  const IDataState({this.data, this.error, required this.status});

  const IDataState.fromError({required IError error})
      : this(error: error, status: DataStatus.failed);

  const IDataState.fromData({required T data})
      : this(data: data, status: DataStatus.success);
}

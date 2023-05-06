
import 'dart:developer' as develop;

abstract class IError implements Exception{
  final String message;
  final String? description;
  final Object? error;
  final StackTrace? stack;

  const IError({
    required this.message,
    this.description,
    this.stack,
    this.error
  });

  String get logMessage => """---------- Error Message :----------\n
  $message\n
  ---------- Error Description :----------\n
  $description\n
  ---------- STACK TRACE :----------\n
  $stack""";

  void raise() => throw this;

  void log() => develop.log(logMessage);

  @override
  String toString() => message;

}
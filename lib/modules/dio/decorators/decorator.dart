import 'dart:async';

abstract class IDecorator<T>{
final FutureOr<T> Function() decoratee;

const IDecorator(this.decoratee);

FutureOr<T> call();
}
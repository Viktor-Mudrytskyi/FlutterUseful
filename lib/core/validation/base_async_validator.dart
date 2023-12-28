import 'dart:async';

abstract class BaseAsyncValidator<Value, Failure> {
  /// Use [update] after calling [BaseAsyncValidator] to validate as constructors cannot be async
  BaseAsyncValidator();

  /// Call update to update all fields of the validator, [validate] is called automatically
  FutureOr<void> update(Value value) async {
    _value = value;
    _failure = await validate(value);
  }

  /// DOES NOT update any field in a validator, only returns a failure, to update
  /// the validator instance call [update]
  FutureOr<Failure>? validate(Value value);

  Failure? _failure;
  late Value _value;

  Value get value => _value;
  Failure? get failure => _failure;
  bool get isValid => _failure == null;
}

import 'dart:async';

abstract base class BaseDebouncer {
  BaseDebouncer({required this.delay});
  final Duration delay;
  void debounce(FutureOr<void> Function() func);
}

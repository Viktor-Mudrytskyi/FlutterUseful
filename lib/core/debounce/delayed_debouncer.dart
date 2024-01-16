import 'dart:async';

import 'package:flutter_useful/core/debounce/base_debouncer.dart';
import 'package:flutter_useful/core/type_extensions.dart';

final class DelayedDebouncer extends BaseDebouncer {
  DelayedDebouncer({required super.delay});

  Timer? _timer;

  @override
  void debounce(void Function() func) {
    if (_timer.isNotNull && _timer!.isActive) {
      return;
    }

    _timer = Timer(delay, () {});
    func();
  }
}

import 'dart:async';

import 'package:flutter_useful/core/debounce/base_debouncer.dart';
import 'package:flutter_useful/core/type_extensions.dart';

final class SearchDebouncer extends BaseDebouncer {
  SearchDebouncer({required super.delay});

  Timer? _timer;

  @override
  void debounce(void Function() func) {
    if (_timer.isNotNull && _timer!.isActive) {
      _timer!.cancel();
      _timer = Timer(delay, func);
      return;
    }

    _timer = Timer(delay, func);
  }
}

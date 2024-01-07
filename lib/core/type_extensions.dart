import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ContextUtils on BuildContext {
  AppLocalizations get tr => AppLocalizations.of(this)!;
  bool get isLtr => Directionality.of(this) == TextDirection.ltr;
}

extension NullOrEmptyString on String? {
  bool get isNullOrEmpty {
    return (this ?? '').isEmpty;
  }

  bool get isNotNullOrEmpty {
    return (this ?? '').isNotEmpty;
  }

  bool get isNullOrEmptyTrim {
    return (this ?? '').trim().isEmpty;
  }

  bool get isNotNullOrEmptyTrim {
    return (this ?? '').trim().isNotEmpty;
  }
}

extension NullOrEmptyList on List<dynamic>? {
  bool get isNullOrEmpty => (this ?? []).isEmpty;
  bool get isNotNullOrEmpty => (this ?? []).isNotEmpty;
}

extension IsNull on Object? {
  bool get isNull => this == null;
  bool get isNotNull => this != null;
}

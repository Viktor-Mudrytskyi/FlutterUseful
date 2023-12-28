import 'package:flutter_useful/core/failures/base_failure.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

abstract class ValidationFailure extends Failure {
  const ValidationFailure();
  String getLocalizedError(AppLocalizations tr);
  @override
  String toString() {
    return 'Validation failed: ${super.toString()}';
  }
}

import 'package:flutter_useful/core/failures/base/failure.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

abstract class AccessFailure extends Failure {
  const AccessFailure();
  String getLocalizedError(AppLocalizations tr);
  @override
  String toString() {
    return 'Access failure: ${super.toString()}';
  }
}

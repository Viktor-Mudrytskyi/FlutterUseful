import 'package:flutter_useful/core/failures/base/failure.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

abstract class LocalizedFailure extends Failure {
  const LocalizedFailure();
  String getLocalizedError(AppLocalizations tr);
}

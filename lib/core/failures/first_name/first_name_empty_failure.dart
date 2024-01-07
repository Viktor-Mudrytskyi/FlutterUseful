import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_useful/core/failures/first_name/first_name_failure.dart';

final class FirstNameEmptyFailure extends FirstNameFailure {
  const FirstNameEmptyFailure();
  @override
  String getLocalizedError(AppLocalizations tr) {
    return tr.error;
  }

  @override
  String get message => 'First name is empty';
}

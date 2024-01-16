import 'package:flutter_useful/core/failures/first_name/first_name_failure.dart';
import 'package:flutter_useful/core/failures/first_name/first_name_empty_failure.dart';
import 'package:flutter_useful/core/failures/first_name/first_name_too_long.dart';
import 'package:flutter_useful/core/type_extensions.dart';
import 'package:flutter_useful/core/validation/validator.dart';

final class FirstNameValidator
    extends BaseValidator<String?, FirstNameFailure> {
  FirstNameValidator(super.value);

  @override
  FirstNameFailure? validate(String? value) {
    if (value.isNullOrEmpty) {
      return const FirstNameEmptyFailure();
    }

    if (value!.length > 20) {
      return const FirstNameTooLongFailure();
    }
    return null;
  }
}

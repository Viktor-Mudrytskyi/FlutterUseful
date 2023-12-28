import 'package:flutter/material.dart';
import 'package:flutter_useful/core/type_extensions.dart';
import 'package:flutter_useful/core/validation/field_validation/first_name_validator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_useful/l10n/l10n.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final FirstNameValidator _validator = FirstNameValidator('');
  void action() {
    _validator.update('g');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: AppLocalizations.supportedLocales,
      locale: L10n.en,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      home: Builder(
        builder: (context) {
          return Scaffold(
            body: Column(
              children: [
                if (_validator.failure.isNotNull)
                  Expanded(
                    child: Text(
                      _validator.failure!.message,
                    ),
                  ),
                Expanded(
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        action();
                        print(_validator.isValid);
                        print(_validator.value);
                        print(_validator.failure);
                      },
                      child: const Text('Action'),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

Future<void> ensureInitialized() async {
  await EasyLocalization.ensureInitialized();
}

Widget wrapWithLocalization(Widget child) {
  return EasyLocalization(
    supportedLocales: const [Locale('en'), Locale('ar'), Locale('es')],
    path: 'assets/i18n',
    fallbackLocale: const Locale('en'),
    child: child,
  );
}

String t(
  BuildContext context,
  String key, {
  Map<String, String>? namedArgs,
  List<String>? args,
}) {
  return key.tr(namedArgs: namedArgs, args: args);
}

void changeLanguage(BuildContext context, Locale locale) {
  context.setLocale(locale);
}

Locale getCurrentLocale(BuildContext context) {
  return context.locale;
}

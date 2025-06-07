import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'i18n/i18n.dart';
import 'package:easy_localization/easy_localization.dart';
import 'theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ensureInitialized(); // Ensure localization setup is ready
  runApp(wrapWithLocalization(const MyApp())); // Wrap app with EasyLocalization
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (context, mode, _) {
        return MaterialApp(
          key: ValueKey(context.locale),
          title: 'Flutter Localization Demo',
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
          locale: context.locale,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: mode,
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
        );
      },
    );
  }
}

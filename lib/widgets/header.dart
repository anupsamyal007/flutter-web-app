import 'package:flutter/material.dart';
import '../i18n/i18n.dart';
import '../theme/theme.dart'; // import your themes

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  static final List<Map<String, dynamic>> languages = [
    {'locale': const Locale('en'), 'label': 'english'},
    {'locale': const Locale('es'), 'label': 'spanish'},
    {'locale': const Locale('ar'), 'label': 'arabic'},
  ];

  static final List<Map<String, dynamic>> userMenuItems = [
    {'value': 'profile', 'icon': Icons.person, 'label': 'profile'},
    {'value': 'settings', 'icon': Icons.settings, 'label': 'settings'},
    {'value': 'logout', 'icon': Icons.logout, 'label': 'logout'},
  ];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (context) => IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
      title: Text(
        t(context, 'flutter_app'),
        style: const TextStyle(color: Colors.white),
      ),
      actions: [
        // User menu
        PopupMenuButton<String>(
          icon: const Icon(Icons.person, color: Colors.white),
          onSelected: (value) {
            switch (value) {
              case 'profile':
                // Navigate to profile
                break;
              case 'settings':
                // Navigate to settings
                break;
              case 'logout':
                // Handle logout
                break;
            }
          },
          itemBuilder: (context) => userMenuItems.map((item) {
            return PopupMenuItem<String>(
              value: item['value'],
              child: Row(
                children: [
                  Icon(item['icon'], size: 18),
                  const SizedBox(width: 8),
                  Text(
                    t(context, item['label']),
                    style: Theme.of(context).popupMenuTheme.textStyle,
                  ),
                ],
              ),
            );
          }).toList(),
        ),
        // Theme toggle
        IconButton(
          icon: const Icon(Icons.brightness_6, color: Colors.white),
          onPressed: () {
            themeNotifier.value = themeNotifier.value == ThemeMode.light
                ? ThemeMode.dark
                : ThemeMode.light;
          },
        ),
        // Language selector
        PopupMenuButton<Locale>(
          icon: const Icon(Icons.language, color: Colors.white),
          onSelected: (locale) {
            changeLanguage(context, locale);
          },
          itemBuilder: (context) => languages.map((lang) {
            return PopupMenuItem<Locale>(
              value: lang['locale'],
              child: Text(
                t(context, lang['label']),
                style: Theme.of(context).popupMenuTheme.textStyle,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

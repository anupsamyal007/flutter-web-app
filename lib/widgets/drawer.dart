import 'package:flutter/material.dart';
import '../i18n/i18n.dart';
import '../screens/home.dart';
import '../screens/details.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appBarColor = theme.appBarTheme.backgroundColor ?? theme.primaryColor;
    final isLight = theme.brightness == Brightness.light;
    final textColor = isLight
        ? Colors.black
        : theme.appBarTheme.foregroundColor ?? Colors.white;
    final dividerColor = theme.dividerColor;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Drawer header with bottom border
          Container(
            padding: const EdgeInsets.all(16),
            height: 120,
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              color: appBarColor,
              border: Border(bottom: BorderSide(color: dividerColor, width: 1)),
            ),
            child: Text(
              t(context, 'flutter_app'),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Drawer items with custom bottom border
          _buildDrawerItem(
            context,
            icon: Icons.home,
            labelKey: 'welcome',
            destination: const HomeScreen(),
            iconColor: textColor,
            textColor: textColor,
            dividerColor: dividerColor,
          ),
          _buildDrawerItem(
            context,
            icon: Icons.pageview,
            labelKey: 'second_page_welcome',
            destination: const SecondScreen(),
            iconColor: textColor,
            textColor: textColor,
            dividerColor: dividerColor,
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(
    BuildContext context, {
    required IconData icon,
    required String labelKey,
    required Widget destination,
    required Color iconColor,
    required Color textColor,
    required Color dividerColor,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: dividerColor, width: 1)),
      ),
      child: ListTile(
        leading: Icon(icon, color: iconColor),
        title: Text(t(context, labelKey), style: TextStyle(color: textColor)),
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => destination),
          );
        },
      ),
    );
  }
}

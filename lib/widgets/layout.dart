import 'package:flutter/material.dart';
import 'header.dart';
import 'footer.dart';
import 'drawer.dart';

class AppLayout extends StatelessWidget {
  final Widget body;

  const AppLayout({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      drawer: const AppDrawer(),
      body: body,
      bottomNavigationBar: const Footer(),
    );
  }
}

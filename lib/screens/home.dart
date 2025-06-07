import 'package:flutter/material.dart';
import '../widgets/layout.dart';
import '../widgets/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppLayout(body: Body());
  }
}

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../widgets/layout.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      body: Center(
        child: Text(
          'second_page_welcome'.tr(),
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../i18n/i18n.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 40,
        alignment: Alignment.center,
        child: Text(
          t(context, 'footer_text'),
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

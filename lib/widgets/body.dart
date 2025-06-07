import 'package:flutter/material.dart';
import '../i18n/i18n.dart';
import '../screens/details.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(t(context, 'welcome'), style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SecondScreen()),
              );
            },
            child: Text(t(context, 'go_to_second')),
          ),
        ],
      ),
    );
  }
}

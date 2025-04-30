import 'package:flutter/material.dart';
import 'letter_page.dart';
import 'settings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const SettingsPage()));
            },
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const LetterPage()));
          },
          child: const Text("Harf"),
        ),
      ),
    );
  }
}

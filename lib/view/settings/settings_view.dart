import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.notifications_outlined),
            title: Text("Settings $index"),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 16,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.notifications_outlined),
          title: Text("Notification $index"),
        );
      },
    );
  }
}

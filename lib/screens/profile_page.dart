import 'package:flutter/material.dart';
import 'package:paypal_clone/screens/notifications_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: BackButton(),
            centerTitle: true,
            title: const Text(
              'Settings',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Arial',
                fontSize: 15,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationsPage()),
                  );
                },
                icon: const Icon(Icons.notifications_none, color: Colors.black),
              ),
            ]),
        backgroundColor: const Color(0xFFF4F6FA),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) =>
              Padding(padding: const EdgeInsets.all(8.0)),
        ));
  }
}

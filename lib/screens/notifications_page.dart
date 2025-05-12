import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(),
          centerTitle: true,
          title: const Text(
            'Notifications',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Arial',
              fontSize: 15,
            ),
          ),
        ),
        backgroundColor: const Color(0xFFF4F6FA),
        body: ListView(
            padding: EdgeInsets.all(10),
            children: List.generate(5, (index) {
              return Card(
                child: ListTile(
                  leading: Icon(
                    Icons.person_outline,
                    color: Colors.black,
                  ),
                ),
              );
            })));
  }
}

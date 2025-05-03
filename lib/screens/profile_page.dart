import 'package:flutter/material.dart';
import 'package:paypal_clone/screens/notifications_page.dart';
import 'package:paypal_clone/screens/login_page.dart';

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
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Card(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              contentPadding: EdgeInsets.all(100),
              leading: Icon(
                Icons.person_outline,
                color: Colors.black,
              ),
            ),
            color: Colors.white,
          ),
          Card(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.person_outline,
                    color: Colors.black,
                  ),
                  contentPadding: EdgeInsets.only(top: 5, left: 16),
                  title: Text("Personal Info"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.shield_outlined,
                    color: Colors.black,
                  ),
                  title: Text("Login and Security"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.visibility_outlined,
                    color: Colors.black,
                  ),
                  title: Text("Data and Privacy"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.notifications_active_outlined,
                    color: Colors.black,
                  ),
                  title: Text("Notification Preferences"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.black,
                  ),
                  contentPadding: EdgeInsets.only(left: 16, bottom: 5),
                  title: Text("Marketing Preferences"),
                ),
              ],
            ),
            color: Colors.white,
          ),
          Card(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.message_outlined,
                    color: Colors.black,
                  ),
                  contentPadding: EdgeInsets.only(top: 5, left: 15),
                  title: Text("Message Center"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.help_outline,
                    color: Colors.black,
                  ),
                  contentPadding: EdgeInsets.only(left: 15, bottom: 5),
                  title: Text("Help"),
                ),
              ],
            ),
            color: Colors.white,
          ),
          Card(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              leading: Icon(
                Icons.delete_outline,
                color: Colors.black,
              ),
              title: Text("Close your Account"),
            ),
            color: Colors.white,
          ),
          Card(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              leading: Icon(
                Icons.logout_outlined,
                color: Colors.black,
              ),
              title: Text("Log Out"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
            ),
            color: Colors.white,
          ),
          ListTile(
            title: Align(
              alignment: Alignment.center,
              child: Text(
                "Legal Agreements",
                style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}

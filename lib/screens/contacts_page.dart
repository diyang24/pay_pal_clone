import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(),
          title: SizedBox(
              height: 50,
              child: TextField(
                  decoration: InputDecoration(
                      labelText: "Name, username, email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.purple,
                            width: 3,
                          ))))),
          backgroundColor: const Color(0xFFF4F6FA),
        ),
        body: RefreshIndicator(
            child: Container(
              child: Title(
                  color: Colors.black,
                  title: "Your Contacts",
                  child: Column(
                    children: [
                      ListTile(
                          leading: Icon(Icons.person),
                          title: Text("John Adrian Regana"),
                          subtitle: Text("@diyang3"),
                          trailing:
                              Icon(Icons.info_outline, color: Colors.black))
                    ],
                  )),
            ),
            color: Colors.black,
            backgroundColor: Colors.white,
            onRefresh: () async {
              return Future<void>.delayed(const Duration(seconds: 2));
            }));
  }
}

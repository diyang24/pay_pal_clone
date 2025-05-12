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
              width: 500,
              child: ListView(
                children: [
                  ListTile(
                    contentPadding:
                        EdgeInsets.only(left: 20, top: 5, bottom: 5),
                    title: Title(
                      color: Colors.black,
                      child: Text(
                        "Your contacts",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/ken.jpg'),
                    ),
                    title: Text("Ken Joshua Cabelin"),
                    subtitle: Text("@ken23"),
                    trailing: Icon(
                      Icons.info_outline,
                      color: Colors.grey,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/kit.jpg'),
                    ),
                    title: Text("Kit Balais"),
                    subtitle: Text("@balais19"),
                    trailing: Icon(
                      Icons.info_outline,
                      color: Colors.grey,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/justin.jpg'),
                    ),
                    title: Text("Justin Paul Permejo"),
                    subtitle: Text("@hersch"),
                    trailing: Icon(
                      Icons.info_outline,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            color: Colors.black,
            backgroundColor: Colors.white,
            onRefresh: () async {
              return Future<void>.delayed(const Duration(seconds: 2));
            }));
  }
}

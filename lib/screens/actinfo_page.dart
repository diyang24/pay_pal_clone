import 'package:flutter/material.dart';

class ActInfoPage extends StatelessWidget {
  const ActInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FA),
      appBar: AppBar(
        leading: BackButton(),
        centerTitle: true,
        title: Text("Account Info"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 150,
              child: Center(
                child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/justin.jpg'),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.edit_sharp,
                        color: Colors.black,
                      ),
                    )),
              ),
            ),
            ListTile(
                leading: Text(
                  "Email Addresses",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                title: Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Text("See All"),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined)),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.mail_outlined,
                  color: Colors.black,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Primary",
                      style: TextStyle(
                          backgroundColor: Colors.grey[400],
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "finalexamna@gmail.com",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                contentPadding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
              ),
            ),
            ListTile(
                leading: Text(
                  "Phone Numbers",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                title: Padding(
                  padding: EdgeInsets.only(left: 106.5),
                  child: Text("See All"),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined)),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.phone_outlined,
                  color: Colors.black,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Primary",
                      style: TextStyle(
                          backgroundColor: Colors.grey[400],
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "09** *** 1234",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Mobile",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[600]),
                    )
                  ],
                ),
                contentPadding: EdgeInsets.only(left: 20, top: 13, bottom: 13),
              ),
            ),
            ListTile(
                leading: Text(
                  "Address",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                title: Padding(
                  padding: EdgeInsets.only(left: 167),
                  child: Text("See All"),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined)),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.home_outlined,
                  size: 30,
                  color: Colors.black,
                ),
                title: Text(
                  "Brgy 105 Real St.\nTacloban City - LEYTE\n6500",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                contentPadding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

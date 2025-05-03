import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paypal_clone/screens/profile_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        centerTitle: true,
        title: const Text(
          'Menu',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Arial',
            fontSize: 15,
          ),
        ),
      ),
      backgroundColor: const Color(0xF2F4F8),
      body: Container(
        color: Color(0xF2F4F8),
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            ListTile(
              title: Text(
                "Manage Finances",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Card(
              margin: EdgeInsets.only(top: 0, bottom: 10),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.smartphone_sharp,
                      color: Colors.black,
                    ),
                    title: Text("Payment Preferences"),
                  ),
                  ListTile(
                    leading: Transform.rotate(
                      angle: 3.14 / 2,
                      child: Icon(
                        Icons.copy,
                        color: Colors.black,
                      ),
                    ),
                    title: Text("Add Banks and Cards"),
                  )
                ],
              ),
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                "Send and Pay",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Card(
              margin: EdgeInsets.only(top: 0, bottom: 10),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.send_rounded,
                      color: Colors.black,
                    ),
                    title: Text("Send to a Paypal "),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.credit_card_outlined,
                      color: Colors.black,
                    ),
                    title: Text("Send to a Debit card"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.description_outlined,
                      color: Colors.black,
                    ),
                    title: Text("Pay Bills"),
                  ),
                ],
              ),
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                "Get Paid",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Card(
              margin: EdgeInsets.only(top: 0, bottom: 10),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.moneyBillWave,
                      color: Colors.black,
                    ),
                    title: Text("Request Money"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.pie_chart_outline,
                      color: Colors.black,
                    ),
                    title: Text("Split the bill"),
                  ),
                ],
              ),
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                "Profile and Support",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Card(
              margin: EdgeInsets.only(top: 0, bottom: 10),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.person_outline_rounded,
                      color: Colors.black,
                    ),
                    title: Text("Your Profile"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfilePage()));
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.account_balance_wallet_outlined,
                      color: Colors.black,
                    ),
                    title: Text("Your Wallet"),
                  )
                ],
              ),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

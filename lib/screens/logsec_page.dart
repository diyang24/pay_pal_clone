import 'package:flutter/material.dart';

class LogsecPage extends StatefulWidget {
  const LogsecPage({super.key});

  @override
  State<LogsecPage> createState() => _LogsecPageState();
}

class _LogsecPageState extends State<LogsecPage> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        centerTitle: true,
        title: Text("Login and Security"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Card(
            child: ListTile(
              contentPadding: EdgeInsets.all(20),
              leading: Icon(Icons.vpn_key),
              title: Text("Passkey"),
              subtitle: Text(
                  "Seamlessly log in using your fingerprint, face, or PIN"),
            ),
            color: Colors.white,
          ),
          Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 8)),
          Card(
            child: SwitchListTile(
              contentPadding: EdgeInsets.all(20),
              title: Text("Extend your login session"),
              subtitle: Text(
                  "\nYour account is eligible for longer logged-in sessions for activities you do often."),
              value: _isSwitched,
              onChanged: (bool value) {
                setState(() {
                  _isSwitched = value;
                });
              },
              activeColor: Colors.black,
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey.shade600,
            ),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

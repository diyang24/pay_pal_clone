import 'package:flutter/material.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "Recent Contacts",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 80,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    const SizedBox(height: 4),
                    Text("User $index", style: const TextStyle(fontSize: 12)),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            "Quick Actions",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildAction(context, icon: Icons.send, label: "Send"),
              _buildAction(context, icon: Icons.request_page, label: "Request"),
              _buildAction(context, icon: Icons.qr_code, label: "Scan"),
            ],
          ),
          const SizedBox(height: 24),
          const Text(
            "Recent Transactions",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          _buildTransaction("School", "- ₱5499.00", "Tuition"),
          _buildTransaction("MLBB", "+ ₱1,000.00", "Refund"),
          _buildTransaction("Steam", "- ₱449.00", "Game purchase"),
        ],
      ),
    );
  }

  Widget _buildAction(BuildContext context,
      {required IconData icon, required String label}) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.grey.shade200,
          child: Icon(icon, size: 28, color: Colors.black),
        ),
        const SizedBox(height: 4),
        Text(label),
      ],
    );
  }

  Widget _buildTransaction(String name, String amount, String note) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8),
      leading: const CircleAvatar(
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.person, color: Colors.white),
      ),
      title: Text(name),
      subtitle: Text(note),
      trailing: Text(
        amount,
        style: TextStyle(
          color: amount.contains('-') ? Colors.red : Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

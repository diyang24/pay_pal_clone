import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget _buildCard({required Widget child}) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 12),
          TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.black,
            tabs: const [
              Tab(text: 'Wallet'),
              Tab(text: 'Rewards'),
              Tab(text: 'Activity'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Wallet Tab
                ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    const Text("Balance",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 8),
                    _buildCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("₱0.00",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text("Gcash"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text("Banks and Cards",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    _buildCard(
                      child: Row(
                        children: const [
                          Icon(Icons.credit_card, size: 40),
                          SizedBox(width: 12),
                          Expanded(
                            child: Text("BANK OF ABC, INC.\n**** 9701"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // Rewards Tab
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.emoji_events, size: 80, color: Colors.orange),
                      SizedBox(height: 16),
                      Text(
                        "Discover new PayPal rewards\nand view your saved offers here",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),

                // Activity Tab
                ListView(
                  padding: const EdgeInsets.all(16),
                  children: const [
                    Text("Today",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    ListTile(
                        title: Text("Josh I."),
                        trailing: Text("+₱250",
                            style: TextStyle(color: Colors.green))),
                    ListTile(
                        title: Text("Google Drive"),
                        trailing:
                            Text("-₱105", style: TextStyle(color: Colors.red))),
                    ListTile(
                        title: Text("Justin Permejo"),
                        trailing: Text("+₱80",
                            style: TextStyle(color: Colors.green))),
                    SizedBox(height: 20),
                    Text("Yesterday",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    ListTile(
                        title: Text("Apple Store"),
                        trailing:
                            Text("-₱250", style: TextStyle(color: Colors.red))),
                    ListTile(
                        title: Text("Food Panda"),
                        trailing:
                            Text("-₱88", style: TextStyle(color: Colors.red))),
                    ListTile(
                        title: Text("Lazada"),
                        trailing:
                            Text("-₱509", style: TextStyle(color: Colors.red))),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

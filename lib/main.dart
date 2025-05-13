import 'package:flutter/material.dart';
import 'package:paypal_clone/screens/home_screen.dart';
import 'package:paypal_clone/screens/landing_page.dart';
import 'package:paypal_clone/screens/login_page.dart';
import 'package:paypal_clone/screens/payments_screen.dart';
import 'package:paypal_clone/screens/wallet_screen.dart';

void main() {
  runApp(const PayPalCloneApp());
}

class PayPalCloneApp extends StatelessWidget {
  const PayPalCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PayPal Clone',
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const MainScreen(),
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const HomeScreen(),
    const PaymentsScreen(),
    const WalletScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money), label: "Payments"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), label: "Wallet"),
        ],
      ),
    );
  }
}

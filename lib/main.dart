import 'package:flutter/material.dart';
import 'package:paypal_clone/screens/home_screen.dart';
import 'package:paypal_clone/screens/landing_page.dart';
import 'package:paypal_clone/screens/login_page.dart';
import 'package:paypal_clone/widgets/custom_nav_bar.dart';

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
        '/home': (context) => const HomeScreen(),
        '/navBar': (context) => const CustomNavBar(),
        // '/home': (context) => const HomePage(),
      },
    );
  }
}

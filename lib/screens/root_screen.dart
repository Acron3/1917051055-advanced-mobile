import 'package:flutter/material.dart';
import 'package:justduit/screens/home_screen.dart';
import 'package:justduit/screens/transaction_screen.dart';

class rootScreen extends StatefulWidget {
  const rootScreen({super.key});

  @override
  State<rootScreen> createState() => _rootScreenState();
}

class _rootScreenState extends State<rootScreen> {
  int _currentIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    Container(
      color: Colors.red,
    ),
    TransactionScreen(),
    Container(
      color: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: "QR Code"),
          BottomNavigationBarItem(
              icon: Icon(Icons.money), label: "Transaction"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
      body: pages[_currentIndex],
    );
  }
}

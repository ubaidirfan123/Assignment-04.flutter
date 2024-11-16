import 'package:flutter/material.dart';
import 'package:grocery/fooddetail.dart';
import 'overview.dart'; // Importing the Overview page
import 'food.dart'; // Importing the Food page
import 'pagetwo.dart'; // Importing the second page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Tracks the selected tab index

  // List of pages to navigate between
  final List<Widget> _pages = [
    OverView(), // First page for Overview
    PageTwo(), // Second page for PageTwo
    Food(), // Third page for Food
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected tab
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 235, 202, 171),
        title: const Text("Fooder"),
      ),
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_android_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: '',
          ),
        ],
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        backgroundColor: const Color.fromARGB(255, 235, 202, 171),
      ),
    );
  }
}

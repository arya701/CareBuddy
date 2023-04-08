import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
  primaryColor: const Color(0xFFC197D2),
  colorScheme: const ColorScheme.light(
    background: const Color(0xFFFFF7F0),
  ),
),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: const Center(
        child: Text('Welcome to My App!'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[300],
        currentIndex: 0,
        onTap: (index) {
          // TODO: Navigate to the appropriate screen based on the selected index
        },
        items: [
          const BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: const Icon(Icons.cloud),
            label: 'Mindful Activities',
          ),
        const  BottomNavigationBarItem(
            icon: const Icon(Icons.chat_bubble),
            label: 'CareRobo',
          ),
      const BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Discussion Forum',
          ),
        ],
      ),
    );
  }
}

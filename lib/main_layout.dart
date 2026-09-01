import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget body;
  final String title;

  const MainLayout({
    super.key,
    required this.body,
    this.title = 'Main Layout',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
      drawer: const Drawer(
        child: Center(
          child: Text('Menu'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
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
          child: TextButton(
            onPressed: null,
            child: Icon(Icons.settings),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add new Recipe'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search')
        ],
        useLegacyColorScheme: false,
      ),
    );
  }
}
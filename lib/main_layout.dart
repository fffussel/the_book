
import 'package:flutter/material.dart';
  
  enum Pages { home, add, search, settings}

class MainLayout extends StatelessWidget {
  final Widget body;
  final String title;
  var currentPage = Pages.home;

   MainLayout({
    super.key,
    required this.body,
    this.title = 'Main Layout',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(title),
        ),
      ),
      body: body,
      drawer: Drawer(
        child: Center(
          child: TextButton(
            onPressed: () { 
                debugPrint("Settings button pressed");
              },
            child: Icon(Icons.settings),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: 'Home',
            
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add new Recipe'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search')
        ],
        useLegacyColorScheme: false,
      ),
    );
  }
}
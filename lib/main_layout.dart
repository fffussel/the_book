import 'package:flutter/material.dart';

import 'components/view/add_view.dart';
import 'components/view/home_view.dart';
import 'components/view/search_view.dart';
import 'components/view/settings_view.dart';

enum Pages { home, add, search, settings }

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  Pages _currentPage = Pages.home;

  static const Map<Pages, String> _titles = {
    Pages.home: 'Home',
    Pages.add: 'Add new Recipe',
    Pages.search: 'Search',
    Pages.settings: 'Settings',
  };

  static const List<Pages> _bottomNavPages = [
    Pages.home,
    Pages.add,
    Pages.search,
  ];

  Widget _viewForPage(Pages page) {
    switch (page) {
      case Pages.home:
        return const HomeView();
      case Pages.add:
        return const AddView();
      case Pages.search:
        return const SearchView();
      case Pages.settings:
        return const SettingsView();
    }
  }

  void _selectPage(Pages page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bottomNavIndex = _bottomNavPages.indexOf(_currentPage);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(_titles[_currentPage]!),
        ),
      ),
      body: _viewForPage(_currentPage),
      drawer: Drawer(
        child: Center(
          child: TextButton(
            onPressed: () {
              _selectPage(Pages.settings);
              Navigator.pop(context);
            },
            child: const Icon(Icons.settings),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavIndex >= 0 ? bottomNavIndex : 0,
        onTap: (index) => _selectPage(_bottomNavPages[index]),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
             label: 'Add new Recipe'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search'
          ),
        ],
        useLegacyColorScheme: false,
      ),
    );
  }
}

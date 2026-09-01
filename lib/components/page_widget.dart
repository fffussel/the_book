import 'package:flutter/material.dart';
import '../main_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      const Center(child: Text('Home')),
      const Center(child: Text('Settings')),
    ];

    return MainLayout(
      title: 'App',
      body: pages[_index],
    );
  }
}
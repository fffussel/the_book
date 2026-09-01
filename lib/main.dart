import 'package:flutter/material.dart';
import 'main_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  MainLayout(
        title: 'Home',
        body: Center(
          child: Text('This is the changing center content'),
        ),
      ),
    );
  }
}
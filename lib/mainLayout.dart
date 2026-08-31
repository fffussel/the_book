import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mainlayout extends StatelessWidget{
  const Mainlayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: const Text('Main Layout'),
        ),
      ],
    );
  }
}
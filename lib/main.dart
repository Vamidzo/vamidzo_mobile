import 'package:flutter/material.dart';

void main() {
  runApp(const VamidzoApp());
}

class VamidzoApp extends StatelessWidget {
  const VamidzoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
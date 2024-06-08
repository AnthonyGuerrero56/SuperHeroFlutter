import 'package:flutter/material.dart';
import 'package:superhero_flutter/screens/hero_list_screen.dart';
import 'package:superhero_flutter/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}

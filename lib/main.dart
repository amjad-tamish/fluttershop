import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const TamishShopApp());
}

class TamishShopApp extends StatelessWidget {
  const TamishShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tamish Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const HomePage(),
    );
  }
}


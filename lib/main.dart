import 'package:digit_assignment/screens/home_screen.dart';
import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Birth App',
      theme: DigitTheme.instance.mobileTheme,
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

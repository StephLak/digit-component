import 'package:digit_assignment/screens/form_screen.dart';
import 'package:digit_assignment/screens/search_screen.dart';
import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Text Field Example',
      theme: DigitTheme.instance.mobileTheme,
      home: const SearchScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}



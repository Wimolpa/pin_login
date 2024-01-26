import 'package:flutter/material.dart';
import 'package:pin_login/pin_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        //scaffoldBackgroundColor: Color(0xFF0C0F14),
      ),
      home: const pin_login(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:wexo_ecommarce/screens/home/screen_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wexo',
      theme: ThemeData(
        fontFamily: 'OoohBaby',
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

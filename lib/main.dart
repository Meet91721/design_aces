import 'package:design_aces/screens/aboutUs/about_us.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ACES',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AboutUs(),
    );
  }
}

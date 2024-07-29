import 'package:flutter/material.dart';
//import 'getStarted.dart';
//import 'login.dart';
//import 'verification.dart';
// import 'home.dart';
import 'detailScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DetailScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

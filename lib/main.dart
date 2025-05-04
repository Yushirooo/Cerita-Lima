import 'package:flutter/material.dart';
import 'splash.dart';  // Import splash.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),  // Menampilkan SplashScreen pertama kali
    );
  }
}

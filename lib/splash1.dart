import 'package:flutter/material.dart';
import 'dart:async';
import 'splash2.dart'; // Pastikan sudah mengimpor Splash2

class Splash1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigasi ke splash2 setelah 3 detik
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Splash2()), // Navigasi ke Splash2
      );
    });

    return Scaffold(
      body: Container(
        color: Color(0xFF00C9A7), // Latar belakang dengan warna #00C9A7
      ),
    );
  }
}

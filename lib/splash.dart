import 'package:flutter/material.dart';
import 'dart:async';
import 'splash1.dart'; // Pastikan sudah mengimpor Splash1

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    // Mulai animasi pemudaran gambar setelah frame pertama
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _opacity = 1.0; // Gambar mulai muncul
      });
    });

    // Setelah 3 detik, gambar akan memudar
    Timer(Duration(seconds: 3), () {
      setState(() {
        _opacity = 0.0; // Gambar mulai memudar
      });

      // Navigasi ke halaman splash1.dart setelah 3 detik lebih lama
      Timer(Duration(seconds: 0), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Splash1()), // Ganti ke Splash1
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(seconds: 2), // Durasi pemudaran
          child: Image.asset(
            'assets/images/splash_image.png',
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

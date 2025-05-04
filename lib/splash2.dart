import 'package:flutter/material.dart';
import 'dart:async';

class Splash2 extends StatefulWidget {
  @override
  _Splash2State createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
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

    // Setelah 3 detik, gambar akan memudar dan halaman berikutnya akan muncul
    Timer(Duration(seconds: 3), () {
      setState(() {
        _opacity = 0.0; // Gambar mulai memudar
      });

      // Navigasi ke halaman berikutnya (ganti dengan halaman yang diinginkan)
      Timer(Duration(seconds: 2), () {
        // Ganti dengan halaman berikutnya sesuai kebutuhan
        Navigator.pushReplacementNamed(context, '/home');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00C9A7), // Mengubah warna background
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(seconds: 2), // Durasi pemudaran
          child: Image.asset(
            'assets/images/splash_image1.png', // Ganti dengan gambar yang diinginkan
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color.dart';

class lupaPasswordView extends StatefulWidget {
  const lupaPasswordView({super.key});

  @override
  State<lupaPasswordView> createState() => _lupaPasswordViewState();
}

class _lupaPasswordViewState extends State<lupaPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(46.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/image/logo1.png',
                      width: 252,
                      height: 96,
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              // Judul "Lupa Password"
              const Center(
                child: Text(
                  'Lupa Password',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 40),

              // Pesan
              const Text(
                'Pesan',
                textAlign: TextAlign.left,
                style: TextStyle(fontFamily: "PoppinsBold", fontSize: 14),
              ),

              const Text(
                'Masukkan email Anda dan tunggu kode etik akan dikirimkan.',
                textAlign: TextAlign.left,
                style: TextStyle(fontFamily: "PoppinsRegular", fontSize: 13),
              ),
              const SizedBox(height: 24),

              // Field Email
              const Text(
                'Masukan Email',
                style: TextStyle(fontSize: 14),
              ),
              
              const SizedBox(height: 2),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(fontFamily: "PoppinsRegular", fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: blueColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: blueColor),
                  ),
                ),
              ),
              const SizedBox(height: 41),

              // Tombol Kirim
              Center(
              child: SizedBox(
                width: 218,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: blueColor,
                    padding: EdgeInsets.symmetric(vertical: 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 5,
                  ),
                  onPressed: () {
                    // Aksi untuk tombol masuk
                  },
                  child: Text(
                    'Kirim',
                    style: TextStyle(
                      fontFamily: "PoppinsBold",
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
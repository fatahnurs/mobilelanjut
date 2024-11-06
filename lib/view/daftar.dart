import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color.dart';
import 'package:flutter_application_1/view/onboarding.dart';

class daftarView extends StatefulWidget {
  const daftarView({super.key});

  @override
  State<daftarView> createState() => _daftarViewState();
}

class _daftarViewState extends State<daftarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(46.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo di bagian atas
            Center(
              child: Column(
                children: [
                  // Logo image bisa disesuaikan dengan aset Anda
                  Image.asset(
                    'assets/image/logo1.png', // Ganti dengan path gambar logo Anda
                    width: 252,
                    height: 96,
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            SizedBox(height: 40),

            // Judul "Masuk"
            Center(
              child: Text(
                'Masuk',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 40),

            // Field Email
            Text(
              'Masukan Email',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 1),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
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
            SizedBox(height: 17),

            // Field Password
            Text(
              'Masukan Password',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 2),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
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
            SizedBox(height: 17),

            Text(
              'Masukan Kembali Password',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 2),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
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
            SizedBox(height: 7),

            Text(
              'Sudah Punya Akun?',
              style: TextStyle(fontSize: 14),
              ),

            TextButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => onboardingView()),
                    );// Aksi untuk Lupa Password
                  },
                  child: Text(
                    'Masuk',
                    style: TextStyle(color: blueColor),
                  ),
                ),


            
            // Tombol Masuk
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
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => onboardingView()),
                    );// Aksi untuk tombol masuk
                  },
                  child: Text(
                    'Daftar',
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
    );
  }
}
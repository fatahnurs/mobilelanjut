import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color.dart';
import 'package:flutter_application_1/view/daftar.dart';
import 'package:flutter_application_1/view/home.dart';
import 'package:flutter_application_1/view/lupaPassword.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


class onboardingView extends StatefulWidget {
  const onboardingView({super.key});

  @override
  State<onboardingView> createState() => _onboardingViewState();
}

class _onboardingViewState extends State<onboardingView> {


   @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async{
    print('ready in 5...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 4...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
  }

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
            SizedBox(height: 2),
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
            SizedBox(height: 41),

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
            SizedBox(height: 2),


            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Text(
                  'Belum Punya Akun?',
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => lupaPasswordView()),
                    );// Aksi untuk Lupa Password
                  },
                  child: Text(
                    'Lupa password ?',
                    style: TextStyle(color: blueColor),
                  ),
                ),
              ], 
            ),

            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
                children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => daftarView()),
                    );// Aksi untuk Lupa Password
                  },
                  child: Text(
                    'Daftar',
                    style: TextStyle(color: blueColor),
                  ),
                  
                ),
              ], 
            ),
            ],
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
                    MaterialPageRoute(builder: (context) => HomePage()),
                    );// Aksi untuk tombol masuk
                  },
                  child: Text(
                    'Masuk',
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
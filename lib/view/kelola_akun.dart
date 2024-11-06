import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color.dart';
import 'package:flutter_application_1/view/home.dart';
import 'package:flutter_application_1/view/logout.dart';
import 'package:flutter_application_1/view/profilPage.dart';

class kelolaAkunView extends StatefulWidget {
  const kelolaAkunView({super.key});

  @override
  State<kelolaAkunView> createState() => _kelolaAkunViewState();
}

class _kelolaAkunViewState extends State<kelolaAkunView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            // Profile Card
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.purple[50],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey[300],
                    child: Icon(Icons.person, size: 40, color: Colors.grey),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Nama Lengkap",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "Asal Universitas",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Form Fields
            buildTextField("Email"),
            buildTextField("Nama"),
            buildTextField("Nomor Telepon"),
            buildTextField("Alamat"),
            SizedBox(height: 20),
            // Update Profile Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                iconColor: Color(0xff000000),
                backgroundColor: blueColor,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
              ),
              child: Text(
                "Ubah Profil",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white,),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image(image: AssetImage("assets/image/nav_icon.png")),
            // icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage("assets/image/nav_icon.png")),
            label: 'Akun',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage("assets/image/nav_icon.png")),
            label: 'Logout',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            // Aksi untuk Logout
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => HomePage()),
            );
          }
          if (index == 1) {
            // Aksi untuk Logout
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          }
          if (index == 2) {
            // Aksi untuk Logout
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => logoutView()),
            );
          }
        },
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.blue,
        // onTap: _onItemTapped,
      ),


      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: "Akun",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.logout),
      //       label: "Logout",
      //     ),
      //   ],
      //   currentIndex: 0, // Set index ke 0 untuk highlight "Home"
      //   selectedItemColor: Colors.purple,
      //   unselectedItemColor: Colors.grey,
      // ),
    );
  }

  // Function to build each text field
  Widget buildTextField(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
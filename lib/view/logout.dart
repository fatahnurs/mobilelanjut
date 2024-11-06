import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/home.dart';
import 'package:flutter_application_1/view/profilPage.dart';

class logoutView extends StatefulWidget {
  const logoutView({super.key});

  @override
  State<logoutView> createState() => _logoutViewState();
}

class _logoutViewState extends State<logoutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Logout"),
      ),

            //navbar
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

      //navbar

    );
    
  }
}
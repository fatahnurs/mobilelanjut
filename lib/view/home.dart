import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/logout.dart';
import 'package:flutter_application_1/view/profilPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset("assets/image/profil_icon.png"),
        // title: Text('Guest', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: Image.asset("assets/image/notif_icon.png"),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),

      
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Guest", style: TextStyle(fontFamily: "PoppinsBold", fontSize: 24),),
              SizedBox(height: 15),
              // Widget Grid View Section
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Widget Grid View',
                    style: TextStyle(fontFamily: "PoppinsRegular", fontSize: 18),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 187, // Tinggi dari grid view
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 132,
                      height: 180,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFFECE6F0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Icon(Icons.image, size: 50, color: Colors.grey),
                          Image.asset("assets/image/main_image.png"),
                          SizedBox(height: 8),
                          Container(
                            width: 116,
                            height: 36,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Artist', style: TextStyle(fontFamily: "PoppinsBold", fontSize: 12)),
                                Text('Song', style: TextStyle(fontFamily: "PoppinsRegular", fontSize: 12)),
                              ],
                            ),
                          )
                          // Text('Artist', style: TextStyle(fontWeight: FontWeight.bold)),
                          // Text('Song', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              
              // Widget List View Section
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Widget List View',
                    style: TextStyle(fontFamily: "PoppinsRegular", fontSize: 18),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
              SizedBox(height: 10),
              ListView.builder(
                
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            child: Image.asset("assets/image/main_image.png"),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Headline',
                                  style: TextStyle(fontSize: 16, fontFamily: "PoppinsBold"),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Description duis aute irure dolor in reprehenderit in volupt...',
                                  style: TextStyle(fontFamily: "PoppinsRegular", color: Colors.grey),
                                  // overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 12),
                                Row(
                                  
                                  children: const [
                                    SizedBox(width: 5),
                                    const Image(image: AssetImage("assets/image/add_icon.png")),
                                    SizedBox(width: 4,),
                                    Text(
                                      'Today • 23 min',
                                      style: TextStyle(fontFamily: "PoppinsRegular", fontSize: 12),
                                    ),
                                    
                                    SizedBox(width: 60),
                                    Icon(Icons.play_arrow, color: Colors.black,),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
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
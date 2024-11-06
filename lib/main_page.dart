// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/view/home.dart';
// import 'package:flutter_application_1/view/kelola_akun.dart';
// import 'package:flutter_application_1/view/logout.dart';
// import 'package:flutter_application_1/view/profilPage.dart';

// class MainPage extends StatefulWidget {
//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   int _selectedIndex = 0;

//   final List<Widget> _pages = [
//     HomePage(),
//     ProfilePage(),
//     logoutView(),
//     kelolaAkunView(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text("Home Page"),
//       // ),
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Image(image: AssetImage("assets/image/nav_icon.png")),
//             // icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Image(image: AssetImage("assets/image/nav_icon.png")),
//             label: 'Akun',
//           ),
//           BottomNavigationBarItem(
//             icon: Image(image: AssetImage("assets/image/nav_icon.png")),
//             label: 'Logout',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.blue,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
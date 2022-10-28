import 'package:flutter/material.dart';
import 'package:budaya_app/pages/about_us_screen.dart';
import 'package:budaya_app/pages/home_screen.dart';
import 'package:budaya_app/pages/news_screen.dart';
import 'package:budaya_app/pages/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown,
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.brown),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const AppMainPage(),
    );
  }
}

// the old _NavBar class just renamed.
class AppMainPage extends StatefulWidget {
  const AppMainPage({super.key});

  @override
  State<AppMainPage> createState() => _AppMainPageState();
}

// The old _NavBarState class, just renamed.
class _AppMainPageState extends State<AppMainPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    //HomeScreen(), mocking widget
    Container(
      color: Colors.white,
      child: const HomeScreen(),
    ),

    //NewsScreen(), mocking widget
    Container(
      color: Colors.white,
      child: const NewsScreen(),
    ),

    //AboutUs(),mocking widget
    Container(
      color: Colors.white,
      child: const AboutUsScreen(),
    ),

    //Profile(),mocking widget
    Container(
      color: Colors.white,
      child: const ProfileScreen(),
    ),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: currentWidth < 600 ? Colors.brown : Colors.white,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        backgroundColor: currentWidth < 600 ? Colors.brown : Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: 
            currentWidth < 600 ? const Color(0xFFFFAB95) : Colors.black,
        unselectedItemColor: currentWidth < 600 ? Colors.white : Colors.brown,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.newspaper,
              ),
              label: 'News',
             ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.info,
              ),
              label: 'About Us',
              ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile',
             ),
        ],
      ),
    );
  }
}

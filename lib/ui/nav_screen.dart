import 'package:e_project/ui/buy_screen.dart';
import 'package:e_project/ui/home_screen.dart';
import 'package:flutter/material.dart';

var page = 0;

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  var screens = const [
    HomeScreen(),
    // DonatersScreen(),
    PayScreen(),
    PayScreen(),
    // SettingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            selectedFontSize: 16,
            unselectedIconTheme: IconThemeData(
              size: 18,
            ),
            selectedIconTheme: IconThemeData(size: 22),
            showUnselectedLabels: false,
            //  backgroundColor: MyColor.primaryColor,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.black,
            // selectedItemColor: MyColor.beige,
            onTap: (index) {
              setState(() {
                page = index;
              });
            },
            currentIndex: page,
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                label: 'Cart',
                icon: Icon(Icons.local_grocery_store_rounded),
              ),
              BottomNavigationBarItem(
                label: 'More',
                icon: Icon(Icons.more_horiz),
              ),
            ],
          ),
          body: screens[page]),
    );
  }
}

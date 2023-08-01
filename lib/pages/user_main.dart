import 'package:flutter/material.dart';
import 'package:master_travel_app/pages/nav_pages/bar_item_page.dart';
import 'package:master_travel_app/pages/nav_pages/home_page.dart';
import 'package:master_travel_app/pages/nav_pages/profile_page.dart';
import 'package:master_travel_app/pages/nav_pages/search_page.dart';
import 'package:master_travel_app/utlis/app_colors.dart';

class UserMain extends StatefulWidget {
  const UserMain({super.key});

  @override
  State<UserMain> createState() => _UserMainState();
}

class _UserMainState extends State<UserMain> {
  int currentIndex = 0;
  List pages = [
    HomePage(),
    SearchPage(),
    BarItemPage(),
    ProfilePage(),
  ];

  void OnTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: OnTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.withOpacity(0.4),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.apps)),
            BottomNavigationBarItem(
                label: "bar items", icon: Icon(Icons.bar_chart_sharp)),
            BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
          ]),
    );
  }
}

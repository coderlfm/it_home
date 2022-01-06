import 'package:flutter/material.dart';
import 'package:it_home/pages/circle/circle_page.dart';
import 'package:it_home/pages/discover/discover_page.dart';
import 'package:it_home/pages/home/home_page.dart';
import 'package:it_home/pages/profile/profile_page.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    const tabBar = [
      BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: '资讯'),
      BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: '圈子'),
      BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: '发现'),
      BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: '我的'),
    ];

    const pages = [HomePage(), CirclePage(), DiscoverPage(), ProfilePage()];

    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        onTap: (index) => setState(() => _currentIndex = index),
        // unselectedItemColor: Colors.black,
        // selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        items: tabBar,
      ),
    );
  }
}

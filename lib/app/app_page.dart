import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'app_controller.dart';
import 'package:it_home/pages/circle/circle_page.dart';
import 'package:it_home/pages/discover/discover_page.dart';
import 'package:it_home/pages/home/home_page.dart';
import 'package:it_home/pages/profile/profile_page.dart';

class AppPage extends GetView<AppController> {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      init: AppController(),
      builder: (_) {
        return Scaffold(
          body: IndexedStack(index: _.currentIndex, children: pages),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _.currentIndex,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            onTap: (index) => _.changeCurrentIndex(index),
            type: BottomNavigationBarType.fixed,
            items: tabBar,
          ),
        );
      },
    );
  }
}

const tabBar = [
  BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: '资讯'),
  BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: '圈子'),
  BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: '发现'),
  BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: '我的'),
];

const pages = [HomePage(), CirclePage(), DiscoverPage(), ProfilePage()];

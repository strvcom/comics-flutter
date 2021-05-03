import 'package:strv_app_implemented/core/resources/colors.dart';
import 'package:strv_app_implemented/features/random_comics/presentation/pages/random_comics_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentTabIndex = 0;

  List<Widget> navigationTabsWidgets = [
    Container(color: Colors.red),
    RandomComicsPage(),
    Container(color: Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 200),
        child: navigationTabsWidgets[currentTabIndex],
      ),
      bottomNavigationBar: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 64),
        child: BottomNavigationBar(
          backgroundColor: Theme.of(context).bottomAppBarColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorRes.ACCENT,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.0),
          unselectedItemColor: ColorRes.COLOR_GRAY,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          currentIndex: currentTabIndex,
          onTap: onTabSelected,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "Feed",
              icon: getNavBarIcon(Icons.home),
              activeIcon: getNavBarIconSelected(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Random",
              icon: getNavBarIcon(Icons.list_alt_rounded),
              activeIcon: getNavBarIconSelected(Icons.list_alt_rounded),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: getNavBarIcon(Icons.settings),
              activeIcon: getNavBarIconSelected(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }

  Icon getNavBarIconSelected(IconData icon) => Icon(icon, color: ColorRes.ACCENT, size: 26);

  Icon getNavBarIcon(IconData icon) => Icon(icon, size: 22);

  void onTabSelected(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }
}

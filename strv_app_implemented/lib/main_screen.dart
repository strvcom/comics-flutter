import 'package:strv_app_implemented/core/resources/colors.dart';
import 'package:strv_app_implemented/features/random/presentation/pages/random_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;

  List<Widget> navigationTabsWidgets = [
    Container(color: Colors.red),
    RandomPage(),
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
          selectedItemColor: ColorRes.COLOR_ACCENT,
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

  Icon getNavBarIconSelected(IconData icon) => Icon(icon, color: ColorRes.COLOR_ACCENT, size: 26);

  Icon getNavBarIcon(IconData icon) => Icon(icon, size: 22);

  void onTabSelected(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }
}

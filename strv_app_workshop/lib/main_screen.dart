import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // int currentTabIndex = 0;

  // List<Widget> navigationTabsWidgets = [
  //   HomeFeedPage(),
  //   RandomPage(),
  //   SettingsPage(),
  // ];

  // BorderRadius nabBarBorderRadius = BorderRadius.only(
  //   topLeft: Radius.circular(DimenRes.BOTTOM_NAV_BAR_CORNER_RADIUS),
  //   topRight: Radius.circular(DimenRes.BOTTOM_NAV_BAR_CORNER_RADIUS),
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: AnimatedSwitcher(
        //   duration: Duration(milliseconds: 200),
        //   child: navigationTabsWidgets[currentTabIndex],
        // ),
        // bottomNavigationBar: Container(
        //   decoration: BoxDecoration(
        //     borderRadius: nabBarBorderRadius,
        //     boxShadow: [BoxShadow(color: Colors.black26, spreadRadius: 0, blurRadius: 10)],
        //   ),
        //   child: ClipRRect(
        //     borderRadius: nabBarBorderRadius,
        //     child: ConstrainedBox(
        //       constraints: BoxConstraints(minHeight: 64),
        //       child: BottomNavigationBar(
        //         backgroundColor: Theme.of(context).bottomAppBarColor,
        //         selectedItemColor: ColorRes.COLOR_ACCENT,
        //         selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.0),
        //         showSelectedLabels: true,
        //         showUnselectedLabels: false,
        //         currentIndex: currentTabIndex,
        //         type: BottomNavigationBarType.fixed,
        //         onTap: onTabSelected,
        //         items: <BottomNavigationBarItem>[
        //           BottomNavigationBarItem(
        //             label: S.of(context).appBarFeed,
        //             icon: getNavBarIcon(Icons.home),
        //             activeIcon: getNavBarIconSelected(Icons.home),
        //           ),
        //           BottomNavigationBarItem(
        //             label: S.of(context).appBarRandom,
        //             icon: getNavBarIcon(Icons.list_alt_rounded),
        //             activeIcon: getNavBarIconSelected(Icons.list_alt_rounded),
        //           ),
        //           BottomNavigationBarItem(
        //             label: S.of(context).appBarSettings,
        //             icon: getNavBarIcon(Icons.settings),
        //             activeIcon: getNavBarIconSelected(Icons.settings),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        );
  }

  // Icon getNavBarIconSelected(IconData icon) => Icon(icon, color: ColorRes.COLOR_ACCENT, size: 26);

  // Icon getNavBarIcon(IconData icon) => Icon(icon, size: 22);

  // void onTabSelected(int index) {
  //   setState(() {
  //     currentTabIndex = index;
  //   });
  // }
}

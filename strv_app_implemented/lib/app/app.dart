import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:strv_app_implemented/app/app_theme.dart';
import 'package:strv_app_implemented/features/main/pages/main_page.dart';

class XKCDApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showPerformanceOverlay: false,
      debugShowCheckedModeBanner: true,
      theme: LightTheme.getTheme(),
      darkTheme: DarkTheme.getTheme(),
      themeMode: ThemeMode.system,
      home: MainPage(),
    );
  }
}

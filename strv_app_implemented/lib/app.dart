import 'package:strv_app_implemented/core/resources/style.dart';
import 'package:strv_app_implemented/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StrvApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showPerformanceOverlay: false,
      debugShowCheckedModeBanner: true,
      theme: Style.getLightTheme(context),
      darkTheme: Style.getDarkTheme(context),
      themeMode: ThemeMode.system,
      home: MainScreen(),
    );
  }
}

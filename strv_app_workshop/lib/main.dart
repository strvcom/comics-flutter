import 'package:strv_app_workshop/app/app.dart';
import 'package:strv_app_workshop/main_bloc_observer.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';

/// Roadmap:
/// 1) [] Build and Run empty app
/// 2) [] Change Application Name (using rename)
///       flutter pub run rename --appname XKCD-Workshop -t android,ios
///
/// 3) [] Change Application Icon (using flutter_launcher_icons)
///       flutter pub run flutter_launcher_icons:main
///
/// 4) [] Change Application Splash screen (using flutter_native_splash)
///       flutter pub run flutter_native_splash:create
///
/// 5) [] Setup resources
/// 6) [] Create own empty "XKCDApp", setup theme
/// 7) [] Create MainScreen with bottom navigation and three tabs
/// 8) [] Implement empty RandomComics Page
/// 9) [] Use RandomComics page inside MainScreen
/// 10) [] Bloc library
/// 11) [] Empty Cubit structure for RandomComics page
/// 12) [] Use RandomComics Cubit in RandomComics page and prepare state handling
/// 13) [] To get data, prepare Comics DTO and model entity
/// 14) [] ApiProvider
/// 15) [] Usecase to fetch comics by ID
/// 16) [] Implement fetchData and refresh logic for RandomComicsCubit
/// 17) [] Create RandomComics content page
void main() {
  // Plant Debug logging only in Debug mode!
  if (kDebugMode) Fimber.plantTree(DebugTree(useColors: true));

  // Observe Bloc callbacks for logging
  Bloc.observer = MainBlocObserver();

  // Run App
  runApp(XKCDApp());
}

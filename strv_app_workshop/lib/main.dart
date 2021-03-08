import 'package:strv_app_workshop/app.dart';
import 'package:strv_app_workshop/main_bloc_observer.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';

/// Roadmap:
/// 1) [] Build and Run empty app
/// 2) [] Change Application Name (using flutter_launcher_name)
/// 3) [] Change Application Icon (using flutter_launcher_icons)
/// 4) [] Setup resources
/// 5) [] Create own empty "StrvApp", setup theme
/// 6) [] Create MainScreen with bottom navigation and three tabs
/// 7) [] Implement empty Random Page
/// 8) [] Use Random page inside MainScreen
/// 9) [] Bloc library
/// 10) [] Empty Cubit structure for Random page
/// 11) [] Use Random Cubit in Random page and prepare state handling
/// 12) [] To get data, prepare Comics DTO and model entity
/// 13) [] ApiProvider
/// 14) [] Usecase to get comics by ID
/// 15) [] Implement fetchData and refresh logic for RandomCubit
/// 16) [] Create Comics Random content page
/// 17) [] Implement Random screen pull to refresh functionality
void main() {
  // Plant Debug logging only in Debug mode!
  if (kDebugMode) Fimber.plantTree(DebugTree(useColors: true));

  // Observe Bloc callbacks for logging
  Bloc.observer = MainBlocObserver();

  // Run App
  runApp(StrvApp());
}

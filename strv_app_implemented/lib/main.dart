import 'package:strv_app_implemented/app/app.dart';
import 'package:strv_app_implemented/main_bloc_observer.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  // Plant Debug logging only in Debug mode!
  if (kDebugMode) Fimber.plantTree(DebugTree(useColors: true));

  // Observe Bloc callbacks for logging
  Bloc.observer = MainBlocObserver();

  // Run App
  runApp(XKCDApp());
}

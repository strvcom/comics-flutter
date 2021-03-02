import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:strv_app_implemented/app.dart';
import 'package:strv_app_implemented/core/di/injection.dart';
import 'package:strv_app_implemented/features/home/data/models/comics.dart';
import 'package:strv_app_implemented/main_bloc_observer.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

void main() async {
  // Because of async main()
  WidgetsFlutterBinding.ensureInitialized();

  // Plant Debug logging only in Debug mode!
  if (kDebugMode) Fimber.plantTree(DebugTree(useColors: true));

  // Configure Dependency Injection first!
  await configureDependencyInjection((kDebugMode) ? Environment.dev : Environment.prod);

  // Observe Bloc callbacks for logging
  Bloc.observer = MainBlocObserver();

  // Init Hive
  await Hive.initFlutter();
  Hive.registerAdapter(ComicsAdapter());

  // Run App
  runApp(StrvApp());
}

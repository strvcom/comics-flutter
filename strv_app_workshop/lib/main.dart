import 'package:strv_app_workshop/app.dart';
import "package:flutter/material.dart";

void main() {
  // Because of async main()
  // WidgetsFlutterBinding.ensureInitialized();

  // Plant Debug logging only in Debug mode!
  // if (kDebugMode) Fimber.plantTree(DebugTree(useColors: true));

  // Configure Dependency Injection first!
  // await configureDependencyInjection((kDebugMode) ? Environment.dev : Environment.prod);

  // Observe Bloc callbacks for logging
  // Bloc.observer = MainBlocObserver();

  // Init Hive
  // await Hive.initFlutter();
  // Hive.registerAdapter(ComicsAdapter());

  // Run App
  runApp(StrvApp());
}

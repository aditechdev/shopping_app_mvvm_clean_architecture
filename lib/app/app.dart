import 'package:flutter/material.dart';
import 'package:shopping_app_mvvm_clean_architecture/presentation/resources/routes_manager.dart';
import 'package:shopping_app_mvvm_clean_architecture/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  // const MyApp({super.key}); // Default Constructor
  MyApp._internal(); // private named constructor
  int appState = 0;
  static final MyApp instance =
      MyApp._internal(); // Single instance - singelton

  factory MyApp() => instance; // factory for the class instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      onGenerateRoute: RouteGenerator.getRoute,
      theme: getApplicationTheme(),
      initialRoute: Routes.splashRoute,
    );
  }
}

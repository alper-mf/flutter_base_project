import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tirtik/app/navigation/screens_path.dart';

class AppRouter {
  AppRouter._();
  static final _instance = AppRouter._();
  static AppRouter get instance => _instance;

  static GoRouter get router => AppRouter._router;

  //Cupertino Ekle
  static final GoRouter _router = GoRouter(
      initialLocation: ScreensPath.initialLocation,
      routes: [
        ScreensPath.goToHomeScreen(),
      ],
      errorPageBuilder: (context, error) => MaterialPage(
          key: error.pageKey,
          child: Scaffold(
            backgroundColor: Colors.black,
            body: Center(
              child: Text(error.toString(), style: const TextStyle(color: Colors.white)),
            ),
          )));
}

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'app/navigation/app_navigation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp.router(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light(),
    routeInformationParser: AppRouter.router.routeInformationParser,
    routerDelegate: AppRouter.router.routerDelegate,
  ));
}

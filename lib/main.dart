import 'package:flutter/material.dart';
import 'package:wheater_app/config/router/app_router.dart';

import 'package:wheater_app/config/constants/constants.dart';
import 'package:wheater_app/config/themes/theme.dart';
import 'package:wheater_app/util/helpers/custom_scroll_behavior.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: Constants.kAppName,
      scrollBehavior: CustomScrollBehavior(),
      theme: AppTheme().getTheme(),
      routerConfig: AppRouter.routes,
    );
  }
}

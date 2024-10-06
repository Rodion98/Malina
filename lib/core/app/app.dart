import 'package:flutter/material.dart';
import 'package:malina_app/core/app/router/app_routes.dart';
import 'package:malina_app/injection/injection.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      routerConfig: getIt<AppRouter>().config(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:malina_app/core/app/app.dart';
import 'package:malina_app/injection/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

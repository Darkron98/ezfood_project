import 'package:flutter/material.dart';
import 'src/core/connection/connection.dart';
import 'src/main_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeFirebase();
  runApp(const MyApp());
}

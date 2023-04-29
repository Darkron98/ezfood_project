import 'package:flutter/material.dart';
import 'core/routes/routes.dart';
import 'views/views.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) =>
          MaterialPageRoute(builder: (context) => const Login()),
      initialRoute: '/',
      routes: getAppRoutes(),
    );
  }
}

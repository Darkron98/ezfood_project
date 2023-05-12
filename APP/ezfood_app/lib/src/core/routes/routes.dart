import 'package:flutter/material.dart';

import '../../views/views.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    'login': (context) => const Login(),
    'home': (conttext) => const Home(),
    'catalogo': (context) => const Catalogo(),
    'pedidos': (context) => const Comandas(),
    'personal': (context) => const Personal(),
  };
}

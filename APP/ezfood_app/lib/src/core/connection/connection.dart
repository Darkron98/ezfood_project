import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

//import '../services/app_services.dart';

Future<void> initializeFirebase() async {
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      appId: '1:527839607631:android:3443643e896c1e26e9233a',
      apiKey: 'AIzaSyDmk_LaCwE-9XVyHZU1Y2iIZAs2h8bdB_Q',
      projectId: 'appmovil-dcdb3',
      messagingSenderId: '527839607631',
      storageBucket: 'appmovil-dcdb3.appspot.com',
    ),
  );
}

// main de prueba pra mostrar los datos de la base de datos
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /* 
  await AppServices().getPedido();
  await getPlato();
  await insertCategoria();
  await insertPlato();
  await insertTipoEmpleado();
  await insertEmpleado();
  await insertPedido();
  */
}

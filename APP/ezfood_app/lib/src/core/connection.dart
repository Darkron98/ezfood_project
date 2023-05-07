import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
//metodo para inicializar datos de firebase

Future<void> initializeFirebase() async {
  WidgetsFlutterBinding.ensureInitialized();
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

//imprime datos de la base de datos
Future<void> printCollection(String collectionName) async {
  QuerySnapshot querySnapshot =
      await FirebaseFirestore.instance.collection(collectionName).get();
  querySnapshot.docs.forEach((doc) {
    print(doc.data());
  });
}

//metodo para insertar datos a la base de datos

Future<void> insertDocument(
    String collectionName, Map<String, dynamic> data) async {
  await FirebaseFirestore.instance.collection(collectionName).add(data);
}

// main de prueba pra mostrar los datos de la base de datos
void main() async {
  await initializeFirebase();

  // coleccion de la base de datos que queremos leer
  await printCollection('categoria');

  //insertando un nuevo documento en la colección 'categoria'
/*  Map<String, dynamic> newData = {
    'id': 'bandeja paisa',
    'descripcion': 'con adicion de frijoles'
  };
  await insertDocument('categoria', newData);*/
}

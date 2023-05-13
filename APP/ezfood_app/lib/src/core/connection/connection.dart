import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import '../services/app_services.dart';

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
  final appServices = AppServices();
  /* await initializeFirebase();

  // Obtener una lista de platos
  await appServices.getPlato();

  // Obtener una lista de pedidos
  await appServices.getPedido();

  // Obtener una lista de empleados
  await appServices.getEmpleado();

  // Insertar un plato en la base de datos
  await appServices.insertPlato();

  // Insertar un pedido en la base de datos
  await appServices.insertPedido();

  // Insertar un empleado en la base de datos
  await appServices.insertEmpleado();*/

  // Eliminar un plato de la base de datos
  await appServices.deletePlato('6LCRBVII9dSGTsPXCbqj');

  // Eliminar un pedido de la base de datos
  await appServices.deletePedido('2otKnoAHuNj6CKeqjFGy');

  // Eliminar un empleado de la base de datos
  await appServices.deleteEmpleado('Hx4E0sniFmJZjQqsSLJa');

  // Actualizar un plato en la base de datos
  /* await appServices.updatePlato('id_del_plato_a_actualizar', {
    'nombre': 'Nuevo nombre del plato',
    'precio': 30000,
  });

  // Actualizar un pedido en la base de datos
  await appServices.updatePedido('id_del_pedido_a_actualizar', {
    'observacion': 'Nueva observación del pedido',
  });

  // Actualizar un empleado en la base de datos
  await appServices.updateEmpleado('id_del_empleado_a_actualizar', {
    'nombre': 'Nuevo nombre del empleado',
    'tipo_empleado_id': 'Gerente',
  });*/

  // Obtener una lista de platos
}

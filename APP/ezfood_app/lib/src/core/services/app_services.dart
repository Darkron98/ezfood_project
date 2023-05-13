import 'package:cloud_firestore/cloud_firestore.dart';

class AppServices {
  // Método para obtener una lista de platos
  Future<void> getPlato() async {
    List result = [];
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('plato').get();
    for (var doc in querySnapshot.docs) {
      result.add(doc.data());
    }
    print(result);
  }

  // Método para obtener una lista de pedidos
  Future<void> getPedido() async {
    List result = [];
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('pedido').get();
    for (var doc in querySnapshot.docs) {
      result.add(doc.data());
    }
    print(result);
  }

  // Método para obtener una lista de empleados
  Future<void> getEmpleado() async {
    List result = [];
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('empleado').get();
    for (var doc in querySnapshot.docs) {
      result.add(doc.data());
    }
    print(result);
  }

  // Método para insertar un documento en la base de datos
  Future<void> insertDocument(
      String collectionName, Map<String, dynamic> data) async {
    await FirebaseFirestore.instance.collection(collectionName).add(data);
  }

  // Método para insertar un plato en la base de datos
  Future<void> insertPlato() async {
    Map<String, dynamic> newData = {
      'imagen':
          'https://cdn.colombia.com/gastronomia/2011/08/02/bandeja-paisa-1616.gif',
      'nombre': 'Bandeja paisa',
      'precio': 20000,
    };
    await insertDocument('plato', newData);
  }

  // Método para insertar un pedido en la base de datos
  Future<void> insertPedido() async {
    Map<String, dynamic> newData = {
      'observacion': 'mesa tiene 4 personas',
      'fecha': FieldValue.serverTimestamp(),
      'id': 23,
      'id_empelado': '3120320',
      'id_plato': 'bandeja paisa',
    };
    await insertDocument('pedido', newData);
  }

  // Método para insertar un empleado en la base de datos
  Future<void> insertEmpleado() async {
    Map<String, dynamic> newData = {
      'nombre': 'Mustafa',
      'cedula': '31201320',
      'email': 'mustafa@gmail.com',
      'telefono': '3156160499',
      'tipo_empleado_id': 'Chef',
    };
    await insertDocument('empleado', newData);
  }

  // Método para eliminar un plato de la base de datos
  Future<void> deletePlato(String id) async {
    await FirebaseFirestore.instance.collection('plato').doc(id).delete();
  }

// Método para eliminar un pedido de la base de datos
  Future<void> deletePedido(String id) async {
    await FirebaseFirestore.instance.collection('pedido').doc(id).delete();
  }

// Método para eliminar un empleado de la base de datos
  Future<void> deleteEmpleado(String id) async {
    await FirebaseFirestore.instance.collection('empleado').doc(id).delete();
  }

// Método para actualizar un plato en la base de datos
  Future<void> updatePlato(String id, Map<String, dynamic> data) async {
    await FirebaseFirestore.instance.collection('plato').doc(id).update(data);
  }

// Método para actualizar un pedido en la base de datos
  Future<void> updatePedido(String id, Map<String, dynamic> data) async {
    await FirebaseFirestore.instance.collection('pedido').doc(id).update(data);
  }

// Método para actualizar un empleado en la base de datos
  Future<void> updateEmpleado(String id, Map<String, dynamic> data) async {
    await FirebaseFirestore.instance
        .collection('empleado')
        .doc(id)
        .update(data);
  }
}

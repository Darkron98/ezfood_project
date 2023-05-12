import 'package:cloud_firestore/cloud_firestore.dart';

class AppServices {
  //GET METHODS
  Future<void> getPlato() async {
    List result = [];
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('plato').get();
    querySnapshot.docs.forEach((doc) {
      result.add(doc.data());
    });
    print(result[0]['nombre']);
  }

  Future<void> getPedido() async {
    List result = [];
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('pedido').get();
    querySnapshot.docs.forEach((doc) {
      result.add(doc.data());
    });
    print(result);
  }

  Future<void> getTipoEmpleado() async {
    List result = [];
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('tipo_empleado').get();
    querySnapshot.docs.forEach((doc) {
      result.add(doc.data());
    });
    print(result);
  }

  Future<void> getEmpleado() async {
    List result = [];
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('empleado').get();
    querySnapshot.docs.forEach((doc) {
      result.add(doc.data());
    });
    print(result);
  }

  //CREATE METHODS:
  Future<void> insertDocument(
      String collectionName, Map<String, dynamic> data) async {
    await FirebaseFirestore.instance.collection(collectionName).add(data);
  }

  Future<void> insertPlato() async {
    DocumentSnapshot categoriaSnapshot = await FirebaseFirestore.instance
        .collection('categiria')
        .doc('id')
        .get();
    Map<String, dynamic> newData = {
      'id': categoriaSnapshot.data(),
      'imagen':
          'https://cdn.colombia.com/gastronomia/2011/08/02/bandeja-paisa-1616.gif',
      'nombre': 'Bandeja paisa',
      'precio': 20000,
    };
    await insertDocument('plato', newData);
  }

  Future<void> insertPedido() async {
    DocumentSnapshot empleadoSnapshot =
        await FirebaseFirestore.instance.collection('empleado').doc('id').get();
    DocumentSnapshot platoSnapshot = await FirebaseFirestore.instance
        .collection('plato')
        .doc('nombre')
        .get();

    Map<String, dynamic> newData = {
      'observacion': 'mesa tiene 4 personas',
      'fecha': FieldValue.serverTimestamp(),
      'id': 23,
      'id_empelado': empleadoSnapshot.data(),
      'id_plato': platoSnapshot.data(),
    };
    await insertDocument('pedido', newData);
  }

  Future<void> insertEmpleado() async {
    DocumentSnapshot idEmpleadoSnapshot = await FirebaseFirestore.instance
        .collection('tipo_empleado')
        .doc('tipo')
        .get();
    Map<String, dynamic> newData = {
      'id': 4,
      'nombre': 'Mustafa',
      'cedula': '31201320',
      'email': 'mustafa@gmail.com',
      'telefono': '3156160499',
      'tipo_empleado_id': idEmpleadoSnapshot.data(),
    };
    await insertDocument('empleado', newData);
  }
}

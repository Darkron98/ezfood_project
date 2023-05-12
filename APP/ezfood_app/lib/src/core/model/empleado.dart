class Empleado {
  Empleado({
    this.id = 0,
    this.cedula = '',
    this.nombre = '',
    this.pass = '',
    this.email = '',
    this.phone = '',
    this.tipo = 0,
  });

  final int id;
  final String cedula;
  final String nombre;
  final String pass;
  final String email;
  final String phone;
  final int tipo;

  Empleado copyWith({
    int? id,
    String? cedula,
    String? nombre,
    String? pass,
    String? email,
    String? phone,
    int? tipo,
  }) =>
      Empleado(
        id: id ?? this.id,
        cedula: cedula ?? this.cedula,
        nombre: nombre ?? this.nombre,
        pass: pass ?? this.pass,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        tipo: tipo ?? this.tipo,
      );
}

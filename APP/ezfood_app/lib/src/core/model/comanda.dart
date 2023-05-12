class Comanda {
  Comanda({
    this.id = '0',
    this.estado = 0,
    this.idEmpleado = 0,
    this.mesa = 0,
    this.total = 0,
    fecha,
  }) : fecha = DateTime.now();

  final String id;
  final int estado;
  final DateTime fecha;
  final int idEmpleado;
  final int mesa;
  final double total;

  Comanda copyWith({
    String? id,
    int? estado,
    DateTime? fecha,
    int? idEmpleado,
    int? mesa,
    double? total,
  }) =>
      Comanda(
        estado: estado ?? this.estado,
        fecha: fecha ?? this.fecha,
        idEmpleado: idEmpleado ?? this.idEmpleado,
        mesa: mesa ?? this.mesa,
        total: total ?? this.total,
      );
}

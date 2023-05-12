class Pedido {
  Pedido({
    this.id = '0',
    this.idComanda = 0,
    this.idPlato = 0,
    this.observacion = '',
  });

  final String id;
  final int idComanda;
  final int idPlato;
  final String observacion;

  Pedido copyWith({
    String? id,
    int? idComanda,
    int? idPlato,
    String? observacion,
  }) =>
      Pedido(
        id: id ?? this.id,
        idComanda: idComanda ?? this.idComanda,
        idPlato: idPlato ?? this.idPlato,
        observacion: observacion ?? this.observacion,
      );
}

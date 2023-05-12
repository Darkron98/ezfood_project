class Plato {
  Plato({
    this.id_cat = 0,
    this.img = '',
    this.nombre = '',
    this.precio = 0,
  });

  final int id_cat;
  final String img;
  final String nombre;
  final double precio;

  Plato copyWith({
    int? id_cat,
    String? img,
    String? nombre,
    double? precio,
  }) =>
      Plato(
        id_cat: id_cat ?? this.id_cat,
        img: img ?? this.img,
        nombre: nombre ?? this.nombre,
        precio: precio ?? this.precio,
      );
}

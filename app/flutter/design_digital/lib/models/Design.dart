class Design {
  String nombrePrenda;
  String descripcion;
  String costo;
  String talla;
  String color;
  String tipoPrenda;
  String estado;
  String tipoTela;
  String idUsuario;

  Design({this.talla, this.color, this.tipoPrenda, this.tipoTela});

  Design.fromJson(Map<String, dynamic> json)
      : nombrePrenda = json['nombre_prenda'],
        descripcion = json['descripcion'],
        costo = json['costo'],
        talla = json['talla'],
        color = json['color'],
        tipoPrenda = json['tipo_prenda'],
        estado = json['estado'],
        tipoTela = json['tipo_tela'];

  Map<String, dynamic> toJson() => {
        'nombre_prenda': nombrePrenda,
        'descripcion': descripcion,
        'costo': costo,
        'talla': talla,
        'tipo_prenda': tipoPrenda,
        'tipo_tela': tipoTela,
        'color': color,
        'estado': estado,
        'id_user': idUsuario
      };
}

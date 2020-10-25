class User {
  String idUsuario;
  String nombreUsuario;
  String email;
  String clave;
  String nombres;
  String apellidos;

  User(
      {this.nombreUsuario,
      this.email,
      this.clave,
      this.nombres,
      this.apellidos});

  User.fromJson(Map<String, dynamic> json)
      : idUsuario = json['idusuario'],
        nombreUsuario = json['nombre_usuario'],
        email = json['email'],
        clave = json['clave'],
        nombres = json['nombres'],
        apellidos = json['apellidos'];

  Map<String, dynamic> toJson() => {
        'idusuario': idUsuario,
        'nombre_usuario': nombreUsuario,
        'correo': email,
        'clave': clave,
        'nombres': nombres,
        'apellidos': apellidos,
      };
}

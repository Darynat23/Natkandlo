import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:flutter_session/flutter_session.dart';

const phpServer = 'http://192.168.1.67:8888';
const users = phpServer + '/usuarios';
const designs = phpServer + '/disenios';

void httpRegistro(Map<String, dynamic> formData) async {
  var response = await http.post(users, body: convert.jsonEncode(formData));
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    print(jsonResponse);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

void httpLogin(String user, String password) async {
  var data = {'nombre_usuario': user, 'clave': password};
  var response =
      await http.post(users + '/login', body: convert.jsonEncode(data));
  if (response.statusCode == 200) {
    var user = convert.jsonDecode(response.body);
    await FlutterSession().set('nombre_usuario', user['nombre_usuario']);
    await FlutterSession().set('nombres', user['nombres']);
    await FlutterSession().set('apellidos', user['apellidos']);
    await FlutterSession().set('correo', user['correo']);
    await FlutterSession().set('idusuario', user['idusuario']);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

void httpUserUpdate(String idusuario, String user, String password) async {
  var data = {
    'idusuario': idusuario,
    'nombre_usuario': user,
    'clave': password
  };
  var response = await http.put(users + '/login', body: data);
}

void httpDesigns(String idUsuario) async {
  var response = await http.get(designs + '?id=' + idUsuario);
}

void httpDesign(String idDesign) async {
  var response = await http.get(designs + '/id/' + idDesign);
}

// void httpSaveDesigns(int idUsuario) async {
//   var data = {
//     'nombre_prenda': idusuario,
//     'descripcion': user,
//     'costo': password,
//     'tiempo_creacion': password,
//     'id_user': password,
//   };
//   var response = await http.put(users + '/login', body: data);
// }

// class Design(){
//     String nombre_prenda
//     String descripcion
//     String costo
//     String tiempo_creacion
//     String id_user

//     Design(String nombre_prenda,  String descripcion, String costo,  String tiempo_creacion,String id_user) {
//     this.seatCount = seatCount;
//     this.color  = color;
//     this.wing = wing;
//   }
// }

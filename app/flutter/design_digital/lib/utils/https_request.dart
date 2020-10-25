import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

const phpServer = 'http://192.168.0.25:8888';
const users = phpServer + '/usuarios';
const designs = phpServer + '/disenios';

void httpRegistro(Map<String, dynamic> formData) async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var response = await http.post(users);
  print(response);

  /*if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }*/
}

void httpLogin(String user, String password) async {
  var data = {'nombre_usuario': user, 'clave': password};
  var response = await http.post(users + '/login', body: data);
  print(response);
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

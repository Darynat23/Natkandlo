import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'package:design_digital/models/Design.dart';
import 'package:design_digital/models/User.dart';
import 'package:design_digital/utils/auth.dart';

const phpServer = 'http://192.168.0.25:8888';
const users = phpServer + '/usuarios';
const designs = phpServer + '/disenios';

Future<User> httpRegistro(User user) async {
  var response = await http.post(users, body: convert.jsonEncode(user));
  if (response.statusCode == 200) {
    user = User.fromJson(convert.jsonDecode(response.body));
    setSession(user);
    return user;
  } else {
    print('Request failed with status: ${response.statusCode}.');
    return null;
  }
}

void httpLogin(String user, String password) async {
  var data = {'nombre_usuario': user, 'clave': password};
  var response =
      await http.post(users + '/login', body: convert.jsonEncode(data));
  if (response.statusCode == 200) {
    var user = convert.jsonDecode(response.body);
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

void httpSaveDesigns(Design design) async {
  var response = await http.post(designs, body: convert.jsonEncode(design));
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

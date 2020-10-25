import 'package:flutter_session/flutter_session.dart';
import 'package:design_digital/models/User.dart';

void setSession(User user) async {
  await FlutterSession().set('idusuario', user.idUsuario);
}

Future<String> getSession(User user) async {
  var idUser = await FlutterSession().get('idusuario');
  return idUser;
}

Future<bool> isAuth() async {
  var idUser = await FlutterSession().get('idusuario');
  return idUser != null;
}

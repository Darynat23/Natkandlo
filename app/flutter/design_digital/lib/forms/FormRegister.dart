import 'package:design_digital/utils/https_request.dart';
import 'package:design_digital/models/User.dart';
import 'package:flutter/material.dart';

class FormRegister extends StatefulWidget {
  FormRegister({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyStatefulWidgetState();
  }
}

class _MyStatefulWidgetState extends State<FormRegister> {
  final _formKey = GlobalKey<FormState>();
  User usuario = new User();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Nombre',
              ),
              onSaved: (String value) {
                this.usuario.nombres = value;
              },
              validator: (value) {
                if (value.isEmpty) {
                  return 'Complete su nombre';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Apellidos',
              ),
              onSaved: (String value) {
                this.usuario.apellidos = value;
              },
              validator: (value) {
                if (value.isEmpty) {
                  return 'Complete sus apellidos';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Correo',
              ),
              onSaved: (String value) {
                this.usuario.email = value;
              },
              validator: (value) {
                if (value.isEmpty) {
                  return 'Complete su correo';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Nombre de usuario',
              ),
              onSaved: (String value) {
                this.usuario.nombreUsuario = value;
              },
              validator: (value) {
                if (value.isEmpty) {
                  return 'Complete su nombre de usuario';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Clave',
              ),
              onSaved: (String value) {
                this.usuario.clave = value;
              },
              validator: (value) {
                if (value.isEmpty) {
                  return 'Complete su clave';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () async {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  var user = await httpRegistro(this.usuario);
                  if (user != null) {
                    final snackBar =
                        SnackBar(content: Text('Registro correcto!'));
                    Scaffold.of(context).showSnackBar(snackBar);
                  }
                }
              },
              child: Text('Registrarse'),
            ),
          ),
        ],
      ),
    );
  }
}

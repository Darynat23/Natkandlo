import 'package:design_digital/utils/auth.dart';
import 'package:design_digital/utils/https_request.dart';
import 'package:design_digital/widgets/HeadBar.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HeadBar(),
        body: Stack(
          children: <Widget>[
            SignIn(),
          ],
        ));
  }
}

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isAuthenticated = isAuth();

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final Map<String, dynamic> formData = {
      'email': null,
      'clave': null,
      'nombre': null,
      'apellido': null,
      'nombre_usuario': null
    };
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Nombre',
                  ),
                  onSaved: (String value) {
                    formData['nombre'] = value;
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
                    formData['apellido'] = value;
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
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Center(
                  child: RaisedButton(
                    onPressed: () {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        httpRegistro(formData);
                      }
                    },
                    child: Text('Iniciar'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

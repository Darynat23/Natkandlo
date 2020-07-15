import 'package:design_digital/widgets/Navigation.dart';
import 'package:flutter/material.dart';

Widget Registro() {
  return Scaffold(
    appBar: AppBar(backgroundColor: Color(0xffFEB294)),
    drawer: Navigation(),
    body: Container(
      color: Color(0xffFEB294),
      child: Column(
        children: [
          titulo(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                width: 300,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  child: Formulario(),
                ),
                color: Color.fromRGBO(243, 243, 243, 0.75),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget titulo() {
  return Padding(
    padding: const EdgeInsets.only(top: 30),
    child: Center(
      child: Text(
        "Registrarte",
        style: TextStyle(fontSize: 35, fontFamily: "Georgia"),
      ),
    ),
  );
}

class Formulario extends StatefulWidget {
  Formulario({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyStatefulWidgetState();
  }
}

class _MyStatefulWidgetState extends State<Formulario> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
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
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                  // Process data.
                }
              },
              child: Text('Enviar'),
            ),
          ),
        ],
      ),
    );
  }
}

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Registro();
  }
}

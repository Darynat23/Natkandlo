import 'package:design_digital/utils/https_request.dart';
import 'package:design_digital/widgets/Navigation.dart';
import 'package:flutter/material.dart';
import 'package:design_digital/screens/Home.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  String user;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffFEB294)),
      drawer: Navigation(),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromRGBO(243, 243, 243, 0.75),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Container(
                    child: Text(
                      'Iniciar sesion',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(38.0),
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
                            this.user = value;
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
                            hintText: 'password',
                          ),
                          onSaved: (String value) {
                            password = value;
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
                        child: RaisedButton(
                          onPressed: () {
                            // Validate will return true if the form is valid, or false if
                            // the form is invalid.
                            if (_formKey.currentState.validate()) {
                              _formKey.currentState.save();
                              // Process data.
                              httpLogin(user, password);
                            }
                          },
                          child: Center(child: Text('Iniciar Sesion')),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

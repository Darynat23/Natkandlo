import 'package:flutter/material.dart';

class FormAccount extends StatefulWidget {
  FormAccount({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyStatefulWidgetStateConfig();
  }
}

class _MyStatefulWidgetStateConfig extends State<FormAccount> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 50),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
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
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Apellido',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Complete su apellido';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Correo',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Complete su Correo';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Genero',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Complete su genero';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Direccion',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Complete su direccion';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Telefono',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Complete su telefono';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Documento',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Complete su documento';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      color: Color.fromRGBO(254, 178, 148, 0.75),
    );
  }
}

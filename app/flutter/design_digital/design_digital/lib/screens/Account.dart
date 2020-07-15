import 'package:design_digital/widgets/Navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return  Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffFEB294)),
      drawer: Navigation(),
      body: Column(
        children: [
          Container(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 19.0, top: 15.0),
                    child: Text(
                      'Nombre de usuario',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Image.network(
                                'https://image.freepik.com/fotos-gratis/jovem-mulher-com-um-grande-sorriso_1098-1592.jpg'),
                            radius: 35,
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
          FormularioConfig()
        ],
      ),
    );
  }

}

class FormularioConfig extends StatefulWidget {
  FormularioConfig({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyStatefulWidgetStateConfig();
  }
}


class _MyStatefulWidgetStateConfig extends State<FormularioConfig> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
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
            padding: const EdgeInsets.symmetric(vertical: 8.0),
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
            padding: const EdgeInsets.symmetric(vertical: 8.0),
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
            padding: const EdgeInsets.symmetric(vertical: 8.0),
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
            padding: const EdgeInsets.symmetric(vertical: 8.0),
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
            padding: const EdgeInsets.symmetric(vertical: 8.0),
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
            padding: const EdgeInsets.symmetric(vertical: 8.0),
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
    );
  }
}
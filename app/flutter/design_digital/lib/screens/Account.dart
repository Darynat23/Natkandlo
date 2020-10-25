import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffFEB294),
      appBar: AppBar(backgroundColor: Color(0xffFEB294)),
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
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Column(
                        children: [
                          Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                          'https://image.freepik.com/fotos-gratis/jovem-mulher-com-um-grande-sorriso_1098-1592.jpg')))),
                        ],
                      ),
                  )],
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

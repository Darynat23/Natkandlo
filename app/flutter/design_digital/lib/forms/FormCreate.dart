import 'package:flutter/material.dart';
import 'package:design_digital/constants/design.dart';
import 'package:design_digital/models/Design.dart';
import 'package:design_digital/utils/https_request.dart';

class FormCreate extends StatefulWidget {
  @override
  _FormCreateState createState() => _FormCreateState();
}

class _FormCreateState extends State<FormCreate> {
  Design disenio = new Design();

  final _key = GlobalKey<FormState>();
  var _tallas = TALLAS;
  var _colores = COLORES;
  var _tipoPrendas = TIPOSPRENDAS;
  var _tipoTela = TELAS;

  List<dynamic> toDropItems(List<String> list) {
    return list.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Form(
                key: this._key,
                child: Column(children: [
                  DropdownButtonFormField<String>(
                      hint: Text("Talla"),
                      isExpanded: true,
                      value: this.disenio.talla,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Seleccion una talla';
                        }
                        return null;
                      },
                      items: toDropItems(this._tallas),
                      onChanged: null,
                      onSaved: (String talla) {
                        this.disenio.talla = talla;
                      }),
                  DropdownButtonFormField<String>(
                    isExpanded: true,
                    value: this.disenio.color,
                    onChanged: null,
                    onSaved: (String color) {
                      this.disenio.color = color;
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Seleccion un color';
                      }
                      return null;
                    },
                    hint: Text("Color"),
                    items: toDropItems(this._colores),
                  ),
                  DropdownButtonFormField<String>(
                    isExpanded: true,
                    value: this.disenio.tipoPrenda,
                    onChanged: null,
                    onSaved: (String tipoPrenda) {
                      this.disenio.tipoPrenda = tipoPrenda;
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Seleccion una tipo de prenda';
                      }
                      return null;
                    },
                    hint: Text("Tipo Prenda"),
                    items: toDropItems(this._tipoPrendas),
                  ),
                  DropdownButtonFormField<String>(
                    isExpanded: true,
                    value: this.disenio.tipoTela,
                    onChanged: null,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Seleccion un tipo de tela';
                      }
                      return null;
                    },
                    onSaved: (String tipoTela) {
                      this.disenio.tipoTela = tipoTela;
                    },
                    hint: Text("Tipo Tela"),
                    items: toDropItems(this._tipoTela),
                  ),
                  RaisedButton(
                    onPressed: () {
                      if (_key.currentState.validate()) {
                        _key.currentState.save();
                        httpSaveDesigns(this.disenio);
                      }
                    },
                    child: Text('Crear'),
                  )
                ]))));
  }
}

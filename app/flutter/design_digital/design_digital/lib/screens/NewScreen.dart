import 'dart:ui';

import 'package:design_digital/widgets/HeadBar.dart';
import 'package:design_digital/widgets/Navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Color(0xffFEB294),
        appBar: AppBar(
          backgroundColor: Color(0xffFEB294),
        ),
        body: Column(children: [
          Container(
            decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.teal, Colors.red])),
            child: Center(
              child: Column(children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 19.0, top: 15.0),
                    child: Text('Biblioteca', style: TextStyle(fontSize: 22))),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(children: [
                    Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://i.pinimg.com/236x/be/42/e4/be42e400f31838739c6caa5c72aa5534--s-dresses-cotton-dresses.jpg')))),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Column(children: [
                                Text(
                                  'Nombre: Black and White',
                                  style: TextStyle(fontSize: 17),
                                ),
                                Text(
                                  'Fecha: 17/05/20',
                                  style: TextStyle(fontSize: 17),
                                ),
                                Text(
                                  'Estado: Entregado',
                                  style: TextStyle(fontSize: 17),
                                )
                              ])),
                        ],
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(children: [
                    Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://i.pinimg.com/236x/5c/38/a8/5c38a80a50a2f4aa53b45cda33a2b247--black-white-dresses-black-bows.jpg')))),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Column(children: [
                                Text(
                                  'Nombre: Black and White',
                                  style: TextStyle(fontSize: 17),
                                ),
                                Text(
                                  'Fecha: 28/05/20',
                                  style: TextStyle(fontSize: 17),
                                ),
                                Text(
                                  'Estado: Activo',
                                  style: TextStyle(fontSize: 17),
                                )
                              ])),
                        ],
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(children: [
                    Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://i.pinimg.com/236x/ae/3a/1d/ae3a1d76f14d95c3d3c61122bda6a562.jpg')))),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Column(children: [
                                Text(
                                  'Nombre: Black and White',
                                  style: TextStyle(fontSize: 17),
                                ),
                                Text(
                                  'Fecha: 25/05/20',
                                  style: TextStyle(fontSize: 17),
                                ),
                                Text(
                                  'Estado: Cancelado',
                                  style: TextStyle(fontSize: 17),
                                )
                              ])),
                        ],
                      ),
                    ),
                  ]),
                )
              ]),
            ),
          )
        ]));
  }
}

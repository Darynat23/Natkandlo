import 'dart:html';

import 'package:design_digital/widgets/HeadBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEB294),
      appBar: AppBar(
        backgroundColor: Color(0xffFEB294),
      ),
      body: ListView(
        children: <Widget>[
         Center(
           child: Column(children: [
             Padding(
                 padding: const EdgeInsets.only(top: 20),
               child: Column( children:[
                 Container(
                   width: 150.0,
                   height: 150.0,
                   decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       image: DecorationImage(
                           fit: BoxFit.fill,
                           image: NetworkImage(
                               'https://i.pinimg.com/236x/be/42/e4/be42e400f31838739c6caa5c72aa5534--s-dresses-cotton-dresses.jpg'))))
               ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 9.0),
               child: TextFormField(
                 decoration: const InputDecoration(
                   hintText: 'Nombre',
                 ),
                 validator: (value) {
                   if (value.isEmpty) {
                     return 'Complete el nombre';
                   }
                   return null;
                 },
               ),
             ),
             Container(
               child: Column(
                 children: [
                   Padding(
                       padding: const EdgeInsets.only(top: 10.0),
                       child: Column(children: [
                         Text(
                           'Fecha:',
                           style: TextStyle(fontSize: 18),
                         ),
                         Text(
                           '17/05/20',
                           style: TextStyle(fontSize: 17),
                         ),
                       ])),
                   Container(
                     child: Column(
                       children: [
                         Padding(padding: const EdgeInsets.only(top: 10.0),
                         child: Column(children: [
                           Text(
                               'Estado:',
                           style: TextStyle(fontSize: 18),
                           ),
                           Text(
                               'Activo',
                           style: TextStyle(fontSize: 17),
                           )
                         ],),)
                       ],
                     ),
                   )
                 ],
               ),
             ),
           ],
           ),
         )

        ],
      ),
    );
  }
}
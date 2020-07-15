import 'package:design_digital/screens/Account.dart';
import 'package:flutter/material.dart';

import 'screens/Register.dart';


void main() {
  runApp(MaterialApp(

      theme: ThemeData(fontFamily: "Georgia"),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Register(),
        '/account': (BuildContext context) => Account(),
      },
//      home: Register()
  )
  );
}


//final _formKey = GlobalKey<FormState>();
//
//Widget build(BuildContext context) {
//  return Form(
//      key: _formKey,
//      child:
//          Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
//        Padding(
//          padding: const EdgeInsets.symmetric(vertical: 12.0),
//          child: TextFormField(
//            decoration: const InputDecoration(
//              hintText: 'Nombre',
//            ),
//            validator: (value) {
//              if (value.isEmpty) {
//                return 'Complete su nombre';
//              }
//              return null;
//            },
//          ),
//        )
//      ]));
//}

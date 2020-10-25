import 'package:design_digital/screens/Account.dart';
import 'package:design_digital/screens/Auth.dart';
import 'package:design_digital/screens/Library.dart';
import 'package:design_digital/screens/Product.dart';
import 'package:design_digital/screens/Create.dart';
import 'package:flutter/material.dart';

import 'screens/Home.dart';
import 'screens/Register.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: "Georgia"),
    routes: <String, WidgetBuilder>{
      '/': (BuildContext context) => Home(),
      '/register': (BuildContext context) => Register(),
      '/account': (BuildContext context) => Account(),
      '/library': (BuildContext context) => Library(),
      '/auth': (BuildContext context) => AuthScreen(),
      '/product': (BuildContext context) => Product(),
      '/create': (BuildContext context) => Create(),
    },
  ));
}

import 'package:design_digital/screens/Account.dart';
import 'package:design_digital/screens/NewScreen.dart';
import 'package:flutter/material.dart';

import 'screens/Register.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(fontFamily: "Georgia"),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Register(),
        '/account': (BuildContext context) => Account(),
        '/library': (BuildContext context) => NewScreen(),
      },
  )
  );
}

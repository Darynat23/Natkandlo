import 'package:design_digital/utils/auth.dart';
import 'package:design_digital/widgets/HeadBar.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HeadBar(),
        body: Stack(
          children: <Widget>[
            SignIn(),
          ],
        ));
  }
}

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isAuthenticated = isAuth();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: (
          RaisedButton(
        onPressed: () {
          AuthProvider().loginWithGoogle().then((value) => {print(value)});
        },
        child: Text("Iniciar con Google"),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:design_digital/widgets/Navigation.dart';
import 'package:design_digital/forms/FormCreate.dart';
import 'package:design_digital/widgets/Titulo.dart';
import 'package:design_digital/widgets/ContainerForm.dart';

class Create extends StatefulWidget {
  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Color(0xffFEB294)),
        drawer: Navigation(),
        body: SingleChildScrollView(
          child: Column(children: [
            Titulo(text: "Registrate"),
            ContainerForm(form: FormCreate())
          ]),
        ));
  }
}

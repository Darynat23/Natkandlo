import 'package:design_digital/widgets/Navigation.dart';
import 'package:design_digital/forms/FormRegister.dart';

import 'package:flutter/material.dart';
import 'package:design_digital/widgets/Titulo.dart';
import 'package:design_digital/widgets/ContainerForm.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffFEB294)),
      drawer: Navigation(),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xffFEB294),
          child: Column(
            children: [
              Titulo(text: "Registrate"),
              ContainerForm(form:FormRegister())
            ],
          ),
        ),
      ),
    );
  }
}

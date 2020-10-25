import 'package:flutter/material.dart';

class ContainerForm extends StatelessWidget {
  final Widget form;

  ContainerForm({this.form});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: this.form,
        ),
        color: Color.fromRGBO(243, 243, 243, 0.75),
      ),
    );
  }
}

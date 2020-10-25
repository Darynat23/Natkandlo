import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  final String text;

  Titulo({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 50),
      child: Center(
        child: Text(
          this.text,
          style: TextStyle(fontSize: 35, fontFamily: "Georgia"),
        ),
      ),
    );
  }
}

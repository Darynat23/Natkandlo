import 'package:design_digital/widgets/HeadBar.dart';
import 'package:design_digital/widgets/Navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      appBar: HeadBar(),
      body: Container(
        child: Text("Hello"),
      ),
     );
  }

}

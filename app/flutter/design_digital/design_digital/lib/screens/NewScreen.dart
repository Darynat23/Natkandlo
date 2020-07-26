import 'package:design_digital/widgets/Navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffFEB294),
      appBar: AppBar(
        backgroundColor: Color(0xffFEB294),
      ),
      body: Column(
        children: [
          Container(
            child: Center(
                child: Column(
                    children: [
                Padding(
                padding: const EdgeInsets.only(bottom: 19.0, top: 15.0),
                child:
                Text('Biblioteca', style: TextStyle(fontSize: 20)
                )),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                  children: [
                  Container(width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://image.freepik.com/fotos-gratis/jovem-mulher-com-um-grande-sorriso_1098-1592.jpg')))),
            ],
          )
            ),
      ],
    ),
    )
    ),
    ],
    )
    );
  }
}

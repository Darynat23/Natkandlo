import 'package:flutter/material.dart';
import 'package:design_digital/utils/auth.dart';

class Navigation extends StatelessWidget {
  Widget logged(context) {
    return Column(children: [
      Center(
        child: ListTile(
          title: Text('Cuenta'),
          onTap: () {
            Navigator.of(context).pushNamed('/account');
          },
        ),
      ),
      Center(
        child: ListTile(
          title: Text('Biblioteca'),
          onTap: () {
            Navigator.of(context).pushNamed('/library');
          },
        ),
      ),
      Center(
        child: ListTile(
          title: Text('Producto'),
          onTap: () {
            Navigator.of(context).pushNamed('/product');
          },
        ),
      ),
      Center(
        child: ListTile(
          title: Text('Creacion'),
          onTap: () {
            Navigator.of(context).pushNamed('/create');
          },
        ),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Natkandlo'),
              FutureBuilder(
                  future: isAuth(),
                  builder: (context, snapshot) {
                    return Text("Bienvenido");
                  }),
            ]),
            decoration: BoxDecoration(color: Color(0xffFEB294)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: ListTile(
                  title: Text('Inicio'),
                  onTap: () {
                    Navigator.of(context).pushNamed('/');
                  },
                ),
              ),
              Center(
                child: FutureBuilder(
                    future: isAuth(),
                    builder: (context, snapshot) {
                      return logged(context);
                    }),
              )
            ],
          )
        ],
      ),
    );
  }
}

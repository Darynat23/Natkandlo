import 'package:flutter/material.dart';

class Navigation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(child: Text('Natkandlo'),
            decoration: BoxDecoration(
                color: Color(0xffFEB294)
            ),
          ),
          Column(
            children: <Widget>[
              Center(
                child: ListTile(
                  title: Text('Inicio'),
                  onTap: (){
                    Navigator.of(context).pushNamed('/');
                  },
                ),
              ),
              Center(
                child: ListTile(
                  title: Text('Cuenta'),
                  onTap: (){
                    Navigator.of(context).pushNamed('/account');
                  },

                ),
              ),
              Center(
                child: ListTile(
                  title: Text('Biblioteca'),
                  onTap: (){
                    Navigator.of(context).pushNamed('/library');
                  },
                ),
              ),
              Center(
                child: ListTile(
                  title: Text('Producto'),
                  onTap: (){
                    Navigator.of(context).pushNamed('/product');
                  },
                ),
              ),
              Center(
                child: ListTile(
                  title: Text('Creacion'),
                  onTap: (){
                  },
                ),

              ),
            ],
          )
        ],
      ),
    );
  }
}
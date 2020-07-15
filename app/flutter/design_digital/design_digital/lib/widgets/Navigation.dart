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


                  },
                ),
              ),
              Center(
                child: ListTile(
                  title: Text('Cuenta'),
                  onTap: (){


                  },

                ),
              ),
              Center(
                child: ListTile(
                  title: Text('Biblioteca'),
                  onTap: (){


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
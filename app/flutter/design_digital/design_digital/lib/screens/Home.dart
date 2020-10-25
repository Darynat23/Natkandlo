import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Tween<double> _scaleTween = Tween<double>(begin: 0, end: 1);
  bool _finishStartAnimation = false;

  void finishAnimation() {
    setState(() {
      _finishStartAnimation = true;
    });
  }

  Widget animation(Widget widget) {
    return Container(
      child: TweenAnimationBuilder(
          tween: _scaleTween,
          duration: Duration(milliseconds: 1800),
          builder: (context, scale, child) {
            return Transform.scale(
              scale: scale,
              child: child,
            );
          },
          onEnd: finishAnimation,
          child: widget),
    );
  }

  Widget switchView() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonTheme(
            minWidth: 200,
            child: RaisedButton(
              color: Colors.transparent,
              onPressed: () {
                Navigator.of(context).pushNamed("/auth");
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Iniciar Sesion",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonTheme(
            minWidth: 200,
            child: RaisedButton(
              color: Colors.transparent,
              onPressed: () {
                Navigator.of(context).popAndPushNamed("/register");
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Registrarse",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xffFEB294), Color(0xffC47878)],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter),
        ),
        child: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(top: 300.0, bottom: 50),
                child: animation(
                  Center(
                      child: Text(
                    "Natkandlo",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  )),
                )),
            (_finishStartAnimation ? switchView() : null)
          ].where((child) => child != null).toList(),
        ),
      ),
    );
  }
}

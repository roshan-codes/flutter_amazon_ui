import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Amazon UI',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadData();
  }
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'logo',
      child: Container(
        padding: EdgeInsets.all(100),
        decoration: BoxDecoration(
          color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/logo.png'),
                fit: BoxFit.fitWidth
            )
        ),
      ),
    );
  }

  Future<Timer> loadData() async{
    return new Timer(Duration(seconds: 5),onDoneLoading);

  }
  onDoneLoading() async{
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context ) => Home()));
  }
}
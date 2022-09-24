import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/screen/main_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(children: <Widget>[
      Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff9AC2C9),
          // image: DecorationImage(
          //   fit: BoxFit.fitHeight,
          //   colorFilter: ColorFilter.mode(
          //       Colors.black.withOpacity(0.55), BlendMode.dstATop),
          //   image: AssetImage("assets/images/download.png"),
          // ),
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          color: Colors.white,
          child: Text(
            "Made with ❤️\nBy Yaduttam Pareek",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      /////////////////////////////
      Center(
        child: Container(
            height: 290,
            width: 290,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(290),
            ),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/images/slogo.png"),
                ),
              ),
            )),
      ),
      //////////////////
    ]));
  }
}

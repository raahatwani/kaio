// ignore_for_file: prefer_const_constructors, annotate_overrides, prefer_const_literals_to_create_immutables, file_names, sized_box_for_whitespace

import "dart:async";
import "package:flutter/material.dart";
import "package:kaio/main.dart";
import "package:kaio/mainScreen.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return MainScreen();
      }));
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Theme.of(context).scaffoldBackgroundColor,
              ],
            ),
          ),
            child: Center(
              child: Container(
                height: devH*0.5,
                child: Image(image: AssetImage("assets/logo.png"),fit: BoxFit.fill,)),
            ),
          )),
    );
  }
}

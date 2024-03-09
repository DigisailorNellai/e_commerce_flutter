import 'dart:async';
//import 'dart:html';
//import 'dart:ffi';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Screens/walk_through.dart';
//import 'package:flutter_application_1/Screens/walkthrough.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), 
      () =>  Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext) => const WalkThrough()
    )));
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 85, 137),
      body: Center(
        child: Container(
          width: 191,
          height: 132,
        child: const Column(
          children: [
            Text(
              'Fashion',
              style: TextStyle(
                fontFamily: 'Corinthia',
                fontWeight: FontWeight.bold,
                fontSize: 60,
              ),
            ),
            Text(
              'My Life My Rules',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.normal,
                fontSize: 15
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
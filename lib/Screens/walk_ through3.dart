// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/login.dart';

class WalkThrough3 extends StatefulWidget {
  const WalkThrough3({super.key});

  @override
  State<WalkThrough3> createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                left: 30,
                top: 25,
                child: Image.asset(
                  'assets/Rectangle 8.png',
                  width: 328,
                  height: 450,
                ),
              ),
              const Positioned(
                  top: 500,
                  left: 16,
                  child: Text(
                    'All Types Of Offers\nwithin Your Reach',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  )),
              const Positioned(
                  top: 600,
                  left: 16,
                  child: Text(
                    'Discover the latest trends,create\npersonalized outfits and shop\neffortlessly',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  )),
              Positioned(
                top: 700,
                left: 300,
                child: FloatingActionButton(
                  shape: const CircleBorder(),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => const Login()));
                  },
                  child: Image.asset('assets/arrow.jpg'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

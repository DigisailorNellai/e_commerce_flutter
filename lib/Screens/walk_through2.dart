import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/login.dart';

class WalkThrough2 extends StatelessWidget {
  const WalkThrough2({super.key});

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
                  'assets/Rectangle 8walkthrougn2.png',
                  width: 328,
                  height: 450,
                ),
              ),
              const Positioned(
                  top: 500,
                  left: 16,
                  child: Text(
                    'Take Advantage\nOf The Offer Shopping',
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
                  'Embark on a stylish journey with us as\nwe guide you through our intuitive\nfeatures',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ),
              Positioned(
                top: 700,
                left: 300,
                child: FloatingActionButton(
                  shape: const CircleBorder(),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
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

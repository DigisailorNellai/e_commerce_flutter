import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/login.dart';
import 'package:flutter_application_1/Screens/signup.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
        children: [
          Image.asset(
            'assets/42fa71c8-087e-42f6-8af2-866f5032fef0_cleanup 1.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: Colors.black.withOpacity(0.5), // Adjust opacity as needed
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100, left: 20),
                child: Text(
                  'The best\napp for\nyour fashion\nstyling ',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.white,
                    wordSpacing: 10,
                  ),
                ),
              ),
              const SizedBox(height: 80),
              Container(
                  width: 300,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: const Text('Sign In'))),
              SizedBox(
                height: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account \?',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ))
                ],
              )
            ],
          )
        ],
      )),
    );
  }
}

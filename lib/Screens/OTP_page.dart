// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_application_1/Screens/login.dart';
import 'package:flutter_application_1/Screens/signup.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;
  int _numberOfFields = 4;

  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(_numberOfFields, (index) => FocusNode());
    _controllers =
        List.generate(_numberOfFields, (index) => TextEditingController());
  }

  @override
  void dispose() {
    for (int i = 0; i < _numberOfFields; i++) {
      _focusNodes[i].dispose();
      _controllers[i].dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(0),
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Mask groupotp_page.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
                child: Center(
                  child: Text(
                    'Verification Code',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.purple),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
                child: Center(
                  child: Text(
                    'The otp has been sent to your registered mail id\nexample@gmail.com',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  _numberOfFields,
                  (index) => SizedBox(
                    width: 50.0,
                    child: TextFormField(
                      controller: _controllers[index],
                      focusNode: _focusNodes[index],
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      onChanged: (value) {
                        if (value.length == 1 && index < _numberOfFields - 1) {
                          FocusScope.of(context)
                              .requestFocus(_focusNodes[index + 1]);
                        } else if (value.length == 0 && index > 0) {
                          FocusScope.of(context)
                              .requestFocus(_focusNodes[index - 1]);
                        }
                      },
                      decoration: InputDecoration(
                        counter: const Offstage(),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            //color: Theme.of(context).accentColor,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            
        
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  ElevatedButton(
                      style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(Colors.purple),
                            
                        padding: MaterialStateProperty.all(
                            const EdgeInsetsDirectional.symmetric(
                                horizontal: 150)),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: const Text(
                        'Continue',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
              ],
            ),
            const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Didn\'t receive the OTP',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp() ));
                      },
                      child: const Text(
                        'Resend OTP',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ))
                ],
              )
                ],
              ),
                          
            
          ),
        ),

    );
  }
}

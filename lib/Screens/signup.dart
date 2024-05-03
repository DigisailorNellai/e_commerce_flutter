import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/OTP_page.dart';
import 'package:flutter_application_1/Screens/login.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;



class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool acceptTerms = false, _obscureText = true;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController isSubscribedController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/Mask group.png'),
                  fit: BoxFit.cover,
                )),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
              //SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.mail),
                          hintText: 'Enter your Mail',
                          labelText: 'Mail ID',
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        controller: firstNameController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person),
                          hintText: 'Enter your first name',
                          labelText: 'First Name',
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        controller: lastNameController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person),
                          hintText: 'Enter your last name',
                          labelText: 'Last Name',
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              //SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          labelText: 'Password',
                          contentPadding: const EdgeInsets.all(10),
                          suffixIcon: IconButton(
                            icon: Icon(_obscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(
                                () {
                                  _obscureText = !_obscureText;
                                },
                              );
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        controller: isSubscribedController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.subscriptions),
                          hintText: 'isSubscribed',
                          
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed:  () async {
                        await _signUp(context);
                      },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      padding: MaterialStateProperty.all(
                          const EdgeInsetsDirectional.symmetric(
                              horizontal: 150)),
                    ),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        //backgroundColor: Colors.purple,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account',
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
                                builder: (context) => const Login()));
                      },
                      child: const Text(
                        'Sign in',
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
      
    );
  }
  
    _signUp(BuildContext context) async {
 
 String email = emailController.text;
 String firstName = firstNameController.text;
 String lastName = lastNameController.text;
 String password = passwordController.text;
 String isSubscribed = isSubscribedController.text;

 if (email.isEmpty || firstName.isEmpty || lastName.isEmpty || password.isEmpty || isSubscribed.isEmpty) {

ScaffoldMessenger.of(context).showSnackBar(
  const SnackBar(content: Text('All fields need to be filled'))
);
return;
}

Map<String, dynamic> requestbody = {

    'email' : email,
    'firstName' : firstName,
    'lastName' : lastName,
    'password' : password,
    'isSubscribed' : isSubscribed
};

var url = Uri.parse('http://10.0.2.2:3003/api/auth/register');

try{
  var response = await http.post(url,
  body: jsonEncode(requestbody),
  headers: {
    'Content-Type' : 'application/json'
  }
  );
   debugPrint(response.body);
  if(response.statusCode == 200){

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Registered successfully'))
    );
      emailController.clear();
      firstNameController.clear();
      lastNameController.clear();
      passwordController.clear();
      isSubscribedController.clear();

    Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
  }  else {

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Failed to register')));
  }

}
catch (e) {
  ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text('Error occur: $e')));

}
 

}
}


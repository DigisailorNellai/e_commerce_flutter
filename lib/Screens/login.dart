import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Terms_and_Conditions.dart';
import 'package:flutter_application_1/Screens/main_page.dart';
import 'package:flutter_application_1/Screens/signup.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;



class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool acceptTerms = false, _obscureText = true;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                    image: AssetImage('assets/Rectangle 28.png'),
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
                      'Welcome Home',
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
                          decoration: InputDecoration(
                            hintText: 'Enter your Eamil',
                            labelText: 'Email',
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
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            contentPadding: const EdgeInsets.all(10),
                            suffixIcon: IconButton(
                                icon: Icon(_obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                }),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: acceptTerms,
                      onChanged: (value) {
                        setState(() {
                          acceptTerms = value!;
                        });
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const TermsAndConditions())));
                      },
                      child: const Text(
                        'Terms & Conditions',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.underline,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: acceptTerms
                          ? () {
                              _login(context);
                              // Perform login action if terms are accepted
                            }
                          : null,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple),
                        padding: MaterialStateProperty.all(
                            const EdgeInsetsDirectional.symmetric(
                                horizontal: 150)),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
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
                      'Don\'t have an account',
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
                                  builder: (context) => const SignUp()));
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
                ),
              ])
              ),
        
        );
  }


Future<void> _login(BuildContext context) async {
    String email = emailController.text;
    String password = passwordController.text;
    
    // if (email.isEmpty || password.isEmpty){
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     const SnackBar(content: Text('Enter all fields'))
    //   );
    //   return;

    // }
    Map<String, dynamic> requestbody = {
    'email' : email,
    'password' : password,
};
var url = Uri.parse('http://localhost:3003/api/auth/login');
try{

var response = await http.post(url,
    body: jsonEncode(requestbody),
    headers: {
      'content-Type': 'application/json'
    }
);
if(response.statusCode == 200){
  ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Loggedin successfully')));

  Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));  
}
else {
  ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Cannot Login')));
}

}
catch(e){
  ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text('Error occur: $e')));
}
  }
}

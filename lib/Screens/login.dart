import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Terms_and_Conditions.dart';
import 'package:flutter_application_1/Screens/main_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool accept_terms = false, _obscureText = true;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Container(
              padding: EdgeInsets.all(10),
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/anner.jpg'),
                  fit: BoxFit.cover,
                )
              ),
              
            ),
            Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              ),
              child: const Center(
                child: Text( 'Welcome Home',
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
               Padding(padding: const EdgeInsets.all(20),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your name',
                      labelText: 'User Name',
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
              Padding(padding: const EdgeInsets.all(20),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:  TextFormField(
                      obscureText: _obscureText,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      contentPadding: const EdgeInsets.all(10),
                      suffixIcon: IconButton(
                        icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                        onPressed: () {
                          setState(() {
                           _obscureText = !_obscureText;

                          });
                        }
                        
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
              //SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Checkbox(value: accept_terms, onChanged: (value) {
                    setState(() {
                      accept_terms = value!;
                    }
                    );
                  },
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: ((context) => const TermsAndConditions())));
                      },
                      child: const Text('Terms & Conditions',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.underline,
                      ),
                      ),
                  ),
                ],
              ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                  ElevatedButton(
              onPressed: accept_terms ? () {
                Navigator.push(context,
                 MaterialPageRoute(builder: ((context) => const MainPage()))
                 );
                // Perform login action if terms are accepted
              } : null,
              style: ButtonStyle(
                    //backgroundColor: MaterialStateProperty.all(Colors.blue),
                    padding: MaterialStateProperty.all(const EdgeInsetsDirectional.symmetric(horizontal: 150)),
                  ),
                  child:  const Text('Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  
              ),
  
              ],
             )
          
          ],    
        ),
        ),
        ),
      );
    
  }
}
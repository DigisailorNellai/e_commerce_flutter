import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/navigation_bar.dart';
import 'package:flutter_application_1/widgets/profile.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'My Profile',
              ),
            ),
            body: Column(children: [
                Stack(children: [
                  Container(
                    width: double.infinity,
                    height: 120,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/Rectangle 1569baground-profile.png',
                            ),
                            fit: BoxFit.cover)),
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 120,
                      child: Image.asset('assets/Ellipse 25profile.png'),
                    ),
                  ),
                  const Positioned(
                      top: 20,
                      left: 140,
                      child: Text(
                        'Mohamed',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  const Positioned(
                      top: 50,
                      left: 140,
                      child: Text(
                        'abuthar@gmail.com',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  const Positioned(
                      top: 80,
                      left: 140,
                      child: Text(
                        '8680905537',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Positioned(
                      top: 20,
                      left: 310,
                      child: GestureDetector(
                          onTap: () {
                            
                          },
                          child: const Text('Edit'))),
                ]),
                const SizedBox(
                  height: 20,
                ),
                const Padding(padding: EdgeInsets.only(left: 15),
                child: Profile(),
                )
              ]),
          
            bottomNavigationBar: const NavigationBarBottom(),
            )
            );
    // ignore: dead_code
   
  }
}
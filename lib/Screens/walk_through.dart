import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/login.dart';

class WalkThrough extends StatefulWidget {
  const WalkThrough
({super.key});

  @override
  State<WalkThrough
> createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {
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
              child: Image.asset('assets/Rectangle 8girl.png',
               width: 328,
               height: 450,
              ),
              ),
              const Positioned(
                top: 500,
                left: 16,
                child: Text(
                  '20% Discount\nNew Arrival Products',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    
                  ),
                )
                ),
                const Positioned(
                top: 600,
                left: 16,
                child: Text(
                  'Publish up your selfies to make yourself\nmore beautiful with this app.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    
                  ),
                )
                ),
                Positioned(
                  top: 700,
                  left: 300,
                  child: FloatingActionButton(
                    shape: const CircleBorder(),
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (Context) => Login()));
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
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Screens/notification.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          actions: [
            IconButton(onPressed: (){
                  Navigator.push(context,
                   MaterialPageRoute(builder: (context) => MainNotification()));
            }, icon: const Icon(Icons.notifications))
          ],
        ),
        body: SingleChildScrollView(
        child:   Column(
          children: [
             Row( 
              children: [Container(
            padding: const EdgeInsets.all(10),
            width: 300,
            height: 70,
            child: TextField(
              onChanged: (value) {
                
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'search',
                //filled: true,
                //contentPadding: const EdgeInsets.symmetric(vertical: 272, horizontal: 42),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
              
            ),
          ), 
          const SizedBox(width: 30,),
          IconButton(onPressed: (){

          }, 
          style: const ButtonStyle(
            iconColor: MaterialStatePropertyAll(Colors.purple)
          ), 
          icon: const Icon(Icons.sort))
              ]
             ),
             Stack(
              children: [
                SizedBox(
                  width: 324,
                  height: 148,
                  child: Image.asset('assets/Rectangle 1550.png'),
                ),
                const Align(
                  alignment: Alignment.topCenter,
                  child: Padding(padding: EdgeInsets.all(21),
                  child: Text('New Collections'),
                  ),
                )
              ],
             )
          ],
            ),
        
          
        ),
        ),
        
      
      
    );
  }
}
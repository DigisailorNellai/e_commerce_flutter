import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/notification.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.38, left: 16.19),
      child: Row(
        children: [
          Container(
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
          IconButton(onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const MainNotification()));
          }, 
          icon: const Icon(Icons.notifications),
          iconSize: 34,)
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
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
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
              
            ),
          ),
          IconButton(onPressed: (){

          }, 
          icon: const Icon(Icons.notifications))
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class WishlistPage  extends StatelessWidget {
 final List likedImages;

WishlistPage ({required this.likedImages});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 400,
          child: ListView.builder(
          itemCount:  1,
          itemBuilder: (context, index) {
        
            return ListTile(
              
             );

          },),
        )
        
      ),
    );
  }
}

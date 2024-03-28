import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  final List likedImageUrls;
  

  const WishlistPage({required this.likedImageUrls,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemCount: likedImageUrls.length,
        itemBuilder: (context, index) {
          final  item = likedImageUrls[index];
          return ListTile(
            leading: Image.asset(item.likedImageUrls),
          );
        },
      ),
    );
  }
}

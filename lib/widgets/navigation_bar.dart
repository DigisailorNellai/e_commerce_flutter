import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/cart.dart';
import 'package:flutter_application_1/Screens/favorites.dart';
import 'package:flutter_application_1/Screens/main_page.dart';
import 'package:flutter_application_1/Screens/user.dart';

class NavigationBarBottom extends StatefulWidget {
  const NavigationBarBottom({super.key});

  @override
  State<NavigationBarBottom> createState() => _NavigationBarBottomState();
}

class _NavigationBarBottomState extends State<NavigationBarBottom> {
 late int MyIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.purple,
          
          onTap: (index) {
            setState(() {
              MyIndex = index;
            });
            switch (index) {
              case 0:
                // Navigate to the first page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
                break;
              case 1:
                // Navigate to the second page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const  WishlistPage(likedImageUrls: [],)),
                );
                break;
              case 2:
                // Navigate to the second page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cart()),
                );
                break;
              case 3:
                // Navigate to the second page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => User()),
                );
                break;
              // Add cases for additional pages if needed
            }
          },
          currentIndex: MyIndex,
          selectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.store), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
          ],
          showUnselectedLabels: false,
          showSelectedLabels: false,
        ),
      ),
    );
  }
}

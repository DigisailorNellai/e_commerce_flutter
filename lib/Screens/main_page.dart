//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/cart.dart';
import 'package:flutter_application_1/Screens/favorites.dart';
import 'package:flutter_application_1/Screens/user.dart';
import 'package:flutter_application_1/widgets/gender.dart';
import 'package:flutter_application_1/widgets/top_bar.dart';
import 'package:flutter_application_1/widgets/promo_card.dart';

//import 'package:flutter_application_1/widgets/promo_card.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int myIndex = 0;

  // Navigate to the next page based on the se
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(
        child: Column(children: [
          TopBar(),
          PromoCard(),
          Gender(),
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.purple,
            selectedItemColor: Colors.white,
            onTap: (index) {
              setState(() {
                myIndex = index;
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
                    MaterialPageRoute(builder: (context) => Favorite()),
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
            currentIndex: myIndex,
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
      ),
    );
  }
}

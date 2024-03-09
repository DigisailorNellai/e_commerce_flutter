//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Top_bar.dart';
import 'package:flutter_application_1/widgets/promo_card.dart';
//import 'package:flutter_application_1/widgets/promo_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBar(),
            //PromoCard()
          ],
        ),
      ),
    );
  }
}


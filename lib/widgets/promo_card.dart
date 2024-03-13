import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/pic1_details.dart';
import 'package:flutter_application_1/Screens/pic2_details.dart';
import 'package:flutter_application_1/Screens/pic3_details.dart';
class PromoCard extends StatelessWidget {
  const PromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
      child: CarouselSlider(items: [
            GestureDetector(onTap: () {
                Navigator.push(
                  context , MaterialPageRoute(builder: (context) =>  Pic1Details()));
            }, child: Container(
              width: 298,
              height: 179,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/pic1.png'),
                  fit: BoxFit.cover,
                )
              ),
            ),
            ),
            GestureDetector(onTap: () {
                Navigator.push(
                  context , MaterialPageRoute(builder: (context) =>  const Pic2Details()));
            },child: Container(
              width: 298,
              height: 179,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/pic2.jpeg'),
                  fit:BoxFit.cover,

                  )
              ),
            ),
            ),
            GestureDetector(onTap: () {
                Navigator.push(
                  context , MaterialPageRoute(builder: (context) =>  const Pic3Details()));
            },child: Container(
              width: 298,
              height: 179,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/pic3.webp'),
                  fit:BoxFit.cover,

                  )
              ),
            ),
            ),
          ], 
          options:CarouselOptions( 
                height: 180.0, 
                enlargeCenterPage: true, 
                autoPlay: true, 
                aspectRatio: 16 / 9, 
                autoPlayCurve: Curves.fastOutSlowIn, 
                enableInfiniteScroll: true, 
                autoPlayAnimationDuration: const  Duration(milliseconds: 800), 
                viewportFraction: 0.8, 
              ), 
              ),
    );
      
  }
}
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class PromoCard extends StatelessWidget {
  const PromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const  EdgeInsets.all(10),
    child: ListView(
        children: [
          CarouselSlider(items: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/pic1.png'),
                  fit: BoxFit.cover,
                )
              ),
            )
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
        ],
        )
      );
      
  }
}
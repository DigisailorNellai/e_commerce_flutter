import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CelebrityLook extends StatefulWidget {
  const CelebrityLook({super.key});

  @override
  State<CelebrityLook> createState() => _CelebrityLookState();
}

class _CelebrityLookState extends State<CelebrityLook> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SizedBox(
            child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Celebrity look',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Stack(children: [
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                Container(
                  width: 156,
                  height: 123,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/Rectangle 174image 1.png'),
                  )),
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                    'Couple Dress',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 7),
                  ),
                ),
                Container(
                  width: 81,
                  height: 123,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/Rectangle 175image 2.png'))),
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                    'Saree',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 7),
                  ),
                ),
                Container(
                  width: 81,
                  height: 123,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/Rectangle 176image 3.png'))),
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                    'Mens Accessories',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 7),
                  ),
                ),
                Container(
                  width: 86,
                  height: 83,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/Rectangle 179image 4.png'))),
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                    'Fasho Wear',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 7),
                  ),
                ),
                Container(
                  width: 65,
                  height: 83,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/Rectangle 181image 5.png'))),
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                    'Jewels',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 7),
                  ),
                ),
                Container(
                  width: 81,
                  height: 83,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/Rectangle 178image 6.png'))),
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                    'Womens Accessories',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 6),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    width: 90,
                    height: 85,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/Rectangle 177image 7.png'))),
                    alignment: Alignment.bottomCenter,
                    child: const Text(
                      'Mens Fasho',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 6),
                    ),
                  ),
                )
              ],
            ),
          ])
        ])));
  }
}

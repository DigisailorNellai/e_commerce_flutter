import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Sliding extends StatelessWidget {
  Sliding({super.key});

  final List<String> imagePaths = [
    'assets/Mask group (3).png',
    'assets/Mask group (4).png',
    'assets/Mask group (5).png',
    'assets/Mask group (6).png',
    // Add more image paths as needed
  ];

  final List<String> imageTitles = [
    'Tewkesbery',
    'Takemichi',
    'Anne',
    'Sulthan',
    // Add titles corresponding to each image
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SizedBox(
            child: Column(children: [
          Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Designers',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 250,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child:
                        Image.asset('assets/iconamoon_arrow-up-2-duotone.png'),
                  )
                ],
              )),
          SizedBox(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imagePaths.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.asset(
                            imagePaths[index],
                            width: 102, // Adjust image width as needed
                            height: 157, // Adjust image height as needed
                            fit: BoxFit
                                .cover, // Adjust the fit property as needed
                          ),
                          const SizedBox(height: 5),
                          Text(
                            imageTitles[index],
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    );
                  }))
        ])));
  }
}

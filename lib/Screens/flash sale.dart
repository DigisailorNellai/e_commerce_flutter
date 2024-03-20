import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FlashSale extends StatelessWidget {
  const FlashSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Flash Sale',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                Container(
                  width: 156,
                  height: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/img 4.png'),
                  )),
                ),
                const Text(
                  'Comfy Fashionista',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                const Text('₹ 250.00'),
              ]),
              Column(
                children: [
                  Container(
                    width: 156,
                    height: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/img 6.png'),
                    )),
                  ),
                  const Text(
                    'Blue Suite',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  const Text('₹ 750.00'),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                Container(
                  width: 156,
                  height: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/img 2.png'),
                  )),
                ),
                const Text(
                  'Grey Trouser',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                const Text('₹ 660.00'),
              ]),
              Column(
                children: [
                  Container(
                    width: 156,
                    height: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/img 8.png'),
                    )),
                  ),
                  const Text(
                    'Pink Jumpsuit',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  const Text('₹ 890.00'),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                Container(
                  width: 156,
                  height: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/img 1.png'),
                  )),
                ),
                const Text(
                  'Winter Jacket',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                const Text('₹ 2700.00'),
              ]),
              Column(
                children: [
                  Container(
                    width: 156,
                    height: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/img 5.png'),
                    )),
                  ),
                  const Text(
                    'Mens Winter Coat',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  const Text('₹ 1400.00'),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                Container(
                  width: 156,
                  height: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/img 7.png'),
                  )),
                ),
                const Text(
                  'CutWork Embroidered',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                const Text('₹ 1500.00'),
              ]),
              Column(
                children: [
                  Container(
                    width: 156,
                    height: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/img 4.png'),
                    )),
                  ),
                  const Text(
                    'ComfyFashionista',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  const Text('₹ 750.00'),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

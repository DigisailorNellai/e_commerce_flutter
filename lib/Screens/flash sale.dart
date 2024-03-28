import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Screens/product_screen.dart';


class FlashSale extends StatefulWidget {
  const FlashSale({super.key});

  @override
  State<FlashSale> createState() => _FlashSaleState();
}

class _FlashSaleState extends State<FlashSale> {
   
   bool likedImage1 = false, likedImage2 = false,likedImage3 = false, likedImage4 = false;
   bool likedImage5 = false, likedImage6 = false,likedImage7 = false, likedImage8 = false;
  

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => const ProductScreen())
                        );
                      },
                        child: Container(

                  width: 156,
                  height: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/productScreen.png'),
                  )),
                ),
                    ),
                      
                Positioned(
                  top: 8,
                  right: 8,
                  child:IconButton(onPressed: (){
                    setState(() {
                      likedImage1= !likedImage1;
                    });
                  }, icon: Icon(
                      likedImage1 ? Icons.favorite : Icons.favorite_border,
                      color: likedImage1 ? Colors.white : Colors.black
                  )) )
                  ],
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
                  Stack(
                    children: [
                        Container(
                    width: 156,
                    height: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/img 6.png'),
                    )),
                  ),
                  Positioned(
                  top: 8,
                  right: 8,
                  child:IconButton(onPressed: (){
                    setState(() {
                      likedImage2= !likedImage2;
                    });
                  }, icon: Icon(
                      likedImage2 ? Icons.favorite : Icons.favorite_border,
                      color: likedImage2 ? Colors.white : Colors.black
                  )) )
                    ],
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
                Stack(
                  children: [
                      Container(
                  width: 156,
                  height: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/img 2.png'),
                  )),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child:IconButton(onPressed: (){
                    setState(() {
                      likedImage3= !likedImage3;
                    });
                  }, icon: Icon(
                      likedImage3 ? Icons.favorite : Icons.favorite_border,
                      color: likedImage3 ? Colors.white : Colors.black
                  )) )
                  ],
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
                  Stack(
                    children: [
                        Container(
                    width: 156,
                    height: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/img 8.png'),
                    )),
                  ),
                  Positioned(
                  top: 8,
                  right: 8,
                  child:IconButton(onPressed: (){
                    setState(() {
                      likedImage4= !likedImage4;
                    });
                  }, icon: Icon(
                      likedImage4 ? Icons.favorite : Icons.favorite_border,
                      color: likedImage4 ? Colors.white : Colors.black
                  )) )
                    ],
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
                Stack(
                  children: [
                      Container(
                  width: 156,
                  height: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/img 1.png'),
                  )),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child:IconButton(onPressed: (){
                    setState(() {
                      likedImage5= !likedImage5;
                    });
                  }, icon: Icon(
                      likedImage5 ? Icons.favorite : Icons.favorite_border,
                      color: likedImage5 ? Colors.white : Colors.black
                  )) )
                  ],
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
                  Stack(
                    children: [
                          Container(
                    width: 156,
                    height: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/img 5.png'),
                    )),
                  ),
                  Positioned(
                  top: 8,
                  right: 8,
                  child:IconButton(onPressed: (){
                    setState(() {
                      likedImage6= !likedImage6;
                    });
                  }, icon: Icon(
                      likedImage6 ? Icons.favorite : Icons.favorite_border,
                      color: likedImage6 ? Colors.white : Colors.black
                  )) )
                    ],
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
                Stack(
                  children: [
                        Container(
                  width: 156,
                  height: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/img 7.png'),
                  )),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child:IconButton(onPressed: (){
                    setState(() {
                      likedImage7= !likedImage7;
                    });
                  }, icon: Icon(
                      likedImage7 ? Icons.favorite : Icons.favorite_border,
                      color: likedImage7 ? Colors.white : Colors.black
                  )) )
                  ],
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
                  Stack(
                    children: [
                        Container(
                    width: 156,
                    height: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/img 4.png'),
                    )),
                  ),
                  Positioned(
                  top: 8,
                  right: 8,
                  child:IconButton(onPressed: (){
                    setState(() {
                      likedImage8= !likedImage8;
                    });
                  }, icon: Icon(
                      likedImage8 ? Icons.favorite : Icons.favorite_border,
                      color: likedImage8 ? Colors.white : Colors.black
                  )) )
                    ],
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

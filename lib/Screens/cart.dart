import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/navigation_bar.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 32.38, left: 16.19),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 350,
                    height: 60,
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'search',

                          //filled: true,
                          //contentPadding: const EdgeInsets.symmetric(vertical: 272, horizontal: 42),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: Text(
                      'Last 3 Months',
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.tune), // Icon
                        SizedBox(width: 8), // Add spacing between icon and text
                        Text('filter'), // Text
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: 328,
                    height: 170,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Rectangle 1568.png'),
                          fit: BoxFit.cover),
                    ),
                    child: Row(children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/Rectangle 91.png'),
                      Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Zeel Clothing',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Georgette Lehenga Choli',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Delivery on 08-NOV-2023',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: const Text('Buy Again'))
                            ],
                          ))
                    ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    width: 328,
                    height: 170,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Rectangle 1568.png'),
                          fit: BoxFit.cover),
                    ),
                    child: Row(children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/Rectangle 93.png'),
                      Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Florely Clothing',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Stylish Party Dress Gown',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Delivered on 27-OCT-2023',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: const Text('Buy Again'))
                            ],
                          ))
                    ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    width: 328,
                    height: 170,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Rectangle 1568.png'),
                          fit: BoxFit.cover),
                    ),
                    child: Row(children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/Rectangle 103.png'),
                      Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Zara Clothing',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Mens Brown Jean',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Delivered on 16-AUG-2023',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: const Text('Buy Again'))
                            ],
                          ))
                    ]),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: 328,
                    height: 170,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Rectangle 1568.png'),
                          fit: BoxFit.cover),
                    ),
                    child: Row(children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/Rectangle 105.png'),
                      Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Fast Track',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Gold Strapped Watch',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Delivered on 17-SEP-2023',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('Buy Again'),
                              )
                            ],
                          ))
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationBarBottom(),
    );

    // ignore: dead_code
    //bottomNavigationBar:
    //const NavigationBarBottom();
  }
}
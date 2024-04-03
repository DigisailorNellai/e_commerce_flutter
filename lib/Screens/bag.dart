import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Screens/order_confiration.dart';
import 'package:flutter_application_1/Screens/product_screen.dart';
import 'package:flutter_application_1/Screens/user.dart';

class Bag1 extends StatefulWidget {
  const Bag1({super.key});

  @override
  State<Bag1> createState() => _BagState();
}

class _BagState extends State<Bag1> {
  final List<String> items = ['S', 'M', 'L', 'XL'];
  final List<String> qty = ['1', '2', '3', '4'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            leading:  IconButton(onPressed: () {
                Navigator.push(context,
                 MaterialPageRoute(builder: (Context) => User()));
            }, icon: const Icon(Icons.close)),
            actions: const [
              Icon(
                Icons.favorite_border_outlined,
                size: 20,
              )
            ]),
            body:  SingleChildScrollView(
            child: Column(children: [
           const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Bag (3 products)'),
              )),
              Container(
              height: 600,
              width: double.infinity,
              color: Color.fromARGB(255, 226, 226, 246),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                        width: 370,
                        height: 165,
                        color: Colors.white,
                        child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Stack(children: [
                              Row(
                                children: [
                                  Container(
                                    width: 79,
                                    height: 107,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/Rectangle 1642bag2.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Rudrapayag Georgette\nSemi Stitched Anarkali Gown For Women',
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Row(
                                          children: [
                                            const Text('Size'),
                                            DropdownButton(
                                              value: items[0],
                                              items: items.map((String item) {
                                                return DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(item),
                                                );
                                              }).toList(),
                                              onChanged: (String? newValue) {
                                                setState(() {});
                                              },
                                            ),
                                            const SizedBox(width: 20),
                                            const Text('Qty'),
                                            DropdownButton(
                                              value: qty[0],
                                              items: qty.map((String item) {
                                                return DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(item),
                                                );
                                              }).toList(),
                                              onChanged: (String? newValue) {
                                                setState(() {});
                                              },
                                            )
                                          ],
                                        ),
                                        const Row(
                                          children: [
                                            Icon(
                                              Icons.currency_rupee,
                                              size: 15,
                                            ),
                                            Text(
                                              '4000',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text('MRP'),
                                            Icon(
                                              Icons.currency_rupee,
                                              size: 15,
                                            ),
                                            Text(
                                              '2000',
                                              style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '42% Off',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 3, 205, 10)),
                                            )
                                          ],
                                        ),
                                        const Text('You save 2,000.00',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 7, 235, 15))),
                                       Container(
                                            width: 220,
                                            height: 0.50,
                                            color: Colors.grey,
                                            ),
                                        const Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            'Remove',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.normal,
                                                color: Colors.blue,
                                                decoration:
                                                    TextDecoration.underline),
                                          ),
                                        )
                                      ]),
                                ],
                              ),
                            ]))),
                            SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: 370,
                        height: 165,
                        color: Colors.white,
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Stack(children: [
                              Row(
                                children: [
                                  Container(
                                    width: 79,
                                    height: 107,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/Rectangle 1644pic2.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'SHEIN\nMen’s coffee brown strap watch',
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          children: [
                                            const Text('Size'),
                                            DropdownButton(
                                              value: items[0],
                                              items: items.map((String item) {
                                                return DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(item),
                                                );
                                              }).toList(),
                                              onChanged: (String? newValue) {
                                                setState(() {});
                                              },
                                            ),
                                            const SizedBox(width: 20),
                                            const Text('Qty'),
                                            DropdownButton(
                                              value: qty[0],
                                              items: qty.map((String item) {
                                                return DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(item),
                                                );
                                              }).toList(),
                                              onChanged: (String? newValue) {
                                                setState(() {});
                                              },
                                            )
                                          ],
                                        ),
                                        const Row(
                                          children: [
                                            Icon(
                                              Icons.currency_rupee,
                                              size: 15,
                                            ),
                                            Text(
                                              '3897',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text('MRP'),
                                            Icon(
                                              Icons.currency_rupee,
                                              size: 15,
                                            ),
                                            Text(
                                              '9000',
                                              style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '60% Off',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 3, 205, 10)),
                                            )
                                          ],
                                        ),
                                        const Text('You save 5,697.00',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 7, 235, 15))),
                                        Container(
                                            width: 220,
                                            height: 0.50,
                                            color: Colors.grey,
                                            ),
                                        const Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            'Remove',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.normal,
                                                color: Colors.blue,
                                                decoration:
                                                    TextDecoration.underline),
                                          ),
                                        )
                                      ]),
                                ],
                              ),
                            ]))),
                            const SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: 370,
                        height: 165,
                        color: Colors.white,
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Stack(children: [
                              Row(
                                children: [
                                  Container(
                                    width: 79,
                                    height: 107,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/Rectangle 1646bagpic3.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'ETSY\nMen’s blue suite for wedding',
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          children: [
                                            const Text('Size'),
                                            DropdownButton(
                                              value: items[0],
                                              items: items.map((String item) {
                                                return DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(item),
                                                );
                                              }).toList(),
                                              onChanged: (String? newValue) {
                                                setState(() {});
                                              },
                                            ),
                                            const SizedBox(width: 20),
                                            const Text('Qty'),
                                            DropdownButton(
                                              value: qty[0],
                                              items: qty.map((String item) {
                                                return DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(item),
                                                );
                                              }).toList(),
                                              onChanged: (String? newValue) {
                                                setState(() {});
                                              },
                                            )
                                          ],
                                        ),
                                        const Row(
                                          children: [
                                            Icon(
                                              Icons.currency_rupee,
                                              size: 15,
                                            ),
                                            Text(
                                              '4500',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text('MRP'),
                                            Icon(
                                              Icons.currency_rupee,
                                              size: 15,
                                            ),
                                            Text(
                                              '9000',
                                              style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '55% Off',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 3, 205, 10)),
                                            )
                                          ],
                                        ),
                                        const Text('You save 2,500.00',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 7, 235, 15))),
                                        Container(
                                            width: 220,
                                            height: 0.50,
                                            color: Colors.grey,
                                            ),
                                        const Align(
                                          alignment: Alignment.bottomRight,
                                          child: Text(
                                            'Remove',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.normal,
                                                color: Colors.blue,
                                                decoration:
                                                    TextDecoration.underline),
                                          ),
                                        ),
                                      ]),
                                ],
                              ),
                            ]))),
                            const SizedBox(
                      height: 25,
                    ),
                    const Text(
                        'Assured Quality | 100% Handpicked | Easy Exchange')
                            
            ]
      )
    )
      ),
      Padding(
            padding: EdgeInsets.all(20),
            child: Row(children: [
              const Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.currency_rupee,
                          size: 20,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '7072.00',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'View details',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 80,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const OrderConfirmation()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 7, 6, 6),
                    //backgroundColor: ,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),

                    
                  ),
                  child: const Text(
                    'Proceed to Payment',
                    style: TextStyle(color: Color.fromARGB(255, 186, 181, 181)),
                  ),
                ),
              ),
            ]),
          ),
          const Divider(
            thickness: 5,
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Order Details',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Bag Total',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Icon(
                    Icons.currency_rupee,
                    size: 15,
                  ),
                  Text(
                    '15,994.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Bag Savings',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 184,
                  ),
                  Text(
                    '-',
                    style: TextStyle(
                        fontSize: 9, color: Color.fromARGB(255, 105, 243, 110)),
                  ),
                  Icon(
                    Icons.currency_rupee,
                    size: 15,
                    color: Color.fromARGB(255, 186, 235, 187),
                  ),
                  Text(
                    '8,951.00',
                    style: TextStyle(
                      color: Color.fromARGB(255, 122, 244, 126),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'BCoupon Savings',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 144,
                  ),
                  Text(
                    'Apply coupon',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Convenience Fee',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'What’s this?',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Delivery Fee',
                  ),
                ),
                SizedBox(
                  width: 155,
                ),
                Text(
                  'Free',
                  style: TextStyle(color: Colors.green),
                ),
                Icon(
                  Icons.currency_rupee,
                  size: 13,
                  color: Colors.green,
                ),
                Text(
                  '99.00',
                  style: TextStyle(
                      fontSize: 12, decoration: TextDecoration.lineThrough),
                )
              ]),
              SizedBox(
                height: 13,
              ),
              Row(children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Platform Fee',
                  ),
                ),
                SizedBox(
                  width: 180,
                ),
                Icon(
                  Icons.currency_rupee,
                  size: 13,
                  color: Colors.green,
                ),
                Text(
                  '29.00',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                )
              ]),
              SizedBox(
                height: 13,
              ),
              Row(children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Amount Payable',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                SizedBox(
                  width: 156,
                ),
                Icon(
                  Icons.currency_rupee,
                  size: 15,
                ),
                Text(
                  '7072.00',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ]),
            ]),
          ),
          Container(
              width: double.infinity,
              height: 35,
              color: const Color.fromARGB(255, 206, 220, 231),
              child: const Stack(children: [
                Padding(
                    padding: EdgeInsets.only(left: 80),
                    child: Row(children: [
                      Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.celebration,
                          size: 15,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Cheers! You saved',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.currency_rupee,
                          size: 20,
                        ),
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Text(
                            '9,050.00',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ))
                    ]))
              ])),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.white,
          )
            ]
            )
            )
      )
      );
    
  }
}
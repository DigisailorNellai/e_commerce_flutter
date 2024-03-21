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
                    width: 300,
                    height: 70,
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
              Column(children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        'Last 3 Months',
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(8),
                            height: 21,
                            width: 77,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                  onPressed: () {}, icon: Icon(Icons.tune)),
                            )),
                        const Align(
                          alignment: Alignment.bottomRight,
                          child: Text('Filter'),
                        )
                      ],
                    )
                  ],
                )
              ])
            ],
          ),
        ),
      ),
    );

    // ignore: dead_code
    bottomNavigationBar:
    const NavigationBarBottom();
  }
}

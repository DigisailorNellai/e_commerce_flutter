import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/flash%20sale.dart';
import 'package:flutter_application_1/Screens/notification.dart';
import 'package:flutter_application_1/widgets/banner.dart';
import 'package:flutter_application_1/widgets/designers.dart';
import 'package:flutter_application_1/widgets/sliding.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainNotification()));
                },
                icon: const Icon(Icons.notifications))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(children: [
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: 300,
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
                const SizedBox(
                  width: 30,
                ),
                IconButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        iconColor: MaterialStatePropertyAll(Colors.purple)),
                    icon: const Icon(Icons.sort))
              ]),
              const SizedBox(
                height: 10,
              ),
              const PromoCard2(),
              const Designer(),
              const SizedBox(
                height: 10,
              ),
              Sliding(),
              const SizedBox(
                height: 3,
              ),
              const FlashSale(),
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

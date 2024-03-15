import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Screens/notification.dart';
import 'package:flutter_application_1/widgets/banner.dart';

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
                  padding: const EdgeInsets.only(left: 30),
                  width: 300,
                  height: 50,
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
            ],
          ),
        ),
      ),
    );
  }
}

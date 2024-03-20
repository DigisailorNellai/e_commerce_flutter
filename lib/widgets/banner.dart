import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/widgets/shop_now.dart';

class PromoCard2 extends StatefulWidget {
  const PromoCard2({super.key});

  @override
  State<PromoCard2> createState() => _PromoCard2State();
}

class _PromoCard2State extends State<PromoCard2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Stack(
        children: [
          Container(
            //alignment: Alignment.topLeft,
            width: 350,
            height: 148,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Rectangle 1550.png'),
                  fit: BoxFit.cover),
            ),
          ),
          const Positioned(
            top: 20,
            left: 20,
            child: Text(
              'New Collections',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),

          const Positioned(
            top: 50,
            left: 20,
            child: Text('Discount 50% for\nthe first transaction',
                style: TextStyle(
                  fontSize: 12,
                )),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 230,
              child: Image.asset('assets/image 10.png'),
            ),
          ),
          Positioned(
            top: 90,
            left: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ShopNow()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                //backgroundColor: ,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),

                // padding: MaterialStateProperty.all(
                //     const EdgeInsetsDirectional.symmetric(horizontal: 10)),
              ),
              child: const Text(
                'Shop Now',
                style: TextStyle(color: Color.fromARGB(255, 15, 14, 14)),
              ),
            ),
          ),
          // SizedBox(
          //
          //   child: Align(
          //     alignment: Alignment.bottomRight,
          //     child:
          //   ),
          // ),
        ],
      ),
    );
  }
}

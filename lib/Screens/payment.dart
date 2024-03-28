import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 130,
            ),
            Align(
              alignment: Alignment.center,
              child: Positioned(
                left: 125,
                top: 254,
                child: Image.asset(
                  'assets/Group 2446.png',
                  width: 109,
                  height: 109,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Payment Succesful.',
              style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '     Thank you for your purchase you\nwill recieve email confirmation shortly',
              style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            ElevatedButton(
              onPressed: () {
                
                    
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 195, 65, 218)),
                padding: MaterialStateProperty.all(
                    const EdgeInsetsDirectional.symmetric(horizontal: 90)),
              ),
              child: const Text(
                'Continue Shopping',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  //backgroundColor: Colors.purple,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  
                },
                child: const Text(
                  'E-Reciept',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 191, 69, 213),
                      decoration: TextDecoration.underline),
                ))
          ],
        ),
      ),
    );
  }
}
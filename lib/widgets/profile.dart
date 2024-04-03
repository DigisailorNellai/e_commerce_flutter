import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Screens/bag.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      
      Row(children: [
        const Text(
          'My Cart',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 280,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
             MaterialPageRoute(builder: (context) => const Bag1()));
          },
          child: Image.asset('assets/iconamoon_arrow-up-2-duotone.png'),
        )
      ]),
      const SizedBox(
        height: 20,
      ),
      Row(children: [
        const Text(
          'Customer Care',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 225,
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset('assets/iconamoon_arrow-up-2-duotone.png'),
        )
      ]),
      const SizedBox(
        height: 20,
      ),
      Row(children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Invite Frends',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
                child: Text(
              'Get your rewards for every friend',
              style: TextStyle(
                fontSize: 10,
              ),
            ))
          ],
        ),
        const SizedBox(
          width: 193,
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            'assets/iconamoon_arrow-up-2-duotone.png',
          ),
        ),
      ]),
      const SizedBox(
        height: 20,
      ),
      Row(children: [
        const Text(
          'My Rewards',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 246,
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset('assets/iconamoon_arrow-up-2-duotone.png'),
        )
      ]),
      const SizedBox(
        height: 30,
      ),
      Row(children: [
        const Text(
          'Address',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 277,
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset('assets/iconamoon_arrow-up-2-duotone.png'),
        )
      ]),
      const SizedBox(
        height: 20,
      ),
      Row(children: [
        const Text(
          'Notification',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 250,
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset('assets/iconamoon_arrow-up-2-duotone.png'),
        )
      ]),
      const SizedBox(
        height: 20,
      ),
      Row(children: [
        const Text(
          'Terms & Condition',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 191,
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset('assets/iconamoon_arrow-up-2-duotone.png'),
        )
      ]),
      const SizedBox(
        height: 20,
      ),
      Row(children: [
        const Text(
          'About us',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 270,
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset('assets/iconamoon_arrow-up-2-duotone.png'),
        )
      ]),
      const SizedBox(
        height: 20,
      ),
      Row(children: [
        const Text(
          'Return & Replacement',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 160,
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset('assets/iconamoon_arrow-up-2-duotone.png'),
        )
      ]),
    ]);
  }
}
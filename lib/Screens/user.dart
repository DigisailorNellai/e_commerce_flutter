import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/navigation_bar.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarBottom(),
    );
  }
}

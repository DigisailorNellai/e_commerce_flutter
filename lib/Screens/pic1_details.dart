import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/main_page.dart';

class Pic1Details extends StatelessWidget {
  const Pic1Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
            Navigator.pop(
              context, MaterialPageRoute(builder: (context) => const MainPage()));
        }, icon: const Icon(Icons.arrow_back))
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ForMen extends StatefulWidget {
  const ForMen({super.key});

  @override
  State<ForMen> createState() => _ForMenState();
}

class _ForMenState extends State<ForMen> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Text('hi'),
    );
  }
}
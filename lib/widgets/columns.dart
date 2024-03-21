import 'package:flutter/material.dart';

class Columns extends StatelessWidget {
  const Columns({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text('Last 3 Months'),
          )
        ],
      ),
    );
  }
}

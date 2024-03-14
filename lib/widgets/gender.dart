
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Gender extends StatelessWidget {
  const Gender({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child:  Column(
        children: [
           SizedBox(
           child: TabBar(
        tabs: [
          Tab(
            text: 'For Women',
          ),
          Tab(
            text: 'For Men',
          )
        ]),
          ),
          
        ]
          ),
      
        );
  }
}
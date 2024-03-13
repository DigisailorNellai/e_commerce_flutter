
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';




class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  @override
  Widget build(BuildContext context) {
    return   const DefaultTabController(
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
          Expanded(child: TabBarView(children: [
                 SizedBox(
                  
                    child: Center(
                      child: Text('For Women'),
                    ),
                ),
                SizedBox(
                  child:  Center(
                    child: Text('For Men'),
                  ),
                ),
          ],
          ),
           ),
        ]
          ),
      
        );
        
  }
}
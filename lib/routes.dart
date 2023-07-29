import 'package:flutter/material.dart';
import 'package:flutter_res/page1.dart';
import 'package:flutter_res/page2.dart';
import 'package:flutter_res/page3.dart';

class Routes extends StatelessWidget {
  const Routes({super.key,required this.index});
    final int index;

  @override
  Widget build(BuildContext context) {
    List<Widget> myList=[
      const AlertDiologe(),
      const PageTwo(),
      const PageThree(),
    ];
 
    return myList[index];
  }
}
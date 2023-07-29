import 'package:flutter/material.dart';
import 'package:flutter_res/bottomNavigation.dart';
import 'package:flutter_res/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int index =0;
  BottomNavigation ?myBNB;
  @override

  void initState() {
    // TODO: implement initState
    myBNB=BottomNavigation(currentIndex: (i){
      setState(() {
        index =i;
      });
    }, items: [],);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Resource of flutter"),
      ),
      bottomNavigationBar: myBNB,
      body: Routes(index: index),
    );
  }
}
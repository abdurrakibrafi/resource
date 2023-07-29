import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation(
      {super.key, required List<BottomNavigationBarItem> items,required this.currentIndex});

      final Function currentIndex;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int i){
       setState(() {
          index=i;
          widget.currentIndex(i);
       });
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.amber,
      iconSize: 26,
      selectedFontSize: 15,
      unselectedFontSize: 12,
      items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User')
    ]);
  }
}

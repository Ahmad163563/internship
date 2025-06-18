import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Bottomclass extends StatefulWidget {
  const Bottomclass({super.key});

  @override
  State<Bottomclass> createState() => _BottomclassState();
}

class _BottomclassState extends State<Bottomclass> {
  GlobalKey<State<StatefulWidget>> bottomNavigationKey= GlobalKey();
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: CurvedNavigationBar(items: ),
      body: ,
    );
  }
}

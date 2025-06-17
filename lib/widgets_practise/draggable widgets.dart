import 'package:flutter/material.dart';

class DragableClass extends StatefulWidget {
  const DragableClass({super.key});

  @override
  State<DragableClass> createState() => _DragableClassState();
}

class _DragableClassState extends State<DragableClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable widget'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              
            ),
          )
        ],
      ),
    );
  }
}

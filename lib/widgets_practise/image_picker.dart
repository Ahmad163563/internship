import 'package:flutter/material.dart';

class Imageclass extends StatefulWidget {
  const Imageclass({super.key});

  @override
  State<Imageclass> createState() => _ImageclassState();
}

class _ImageclassState extends State<Imageclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Image Picker'),
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(onPressed: (){}),
    );
  }
}

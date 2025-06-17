import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imageclass extends StatefulWidget {
  const Imageclass({super.key});

  @override
  State<Imageclass> createState() => _ImageclassState();
}

class _ImageclassState extends State<Imageclass> {
   File _image;
   final picker = ImagePicker();
   Future getImage()async{
     final pickerImage=picker. getImage(source: ImageSource.camera)
   }
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

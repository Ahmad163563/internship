import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imageclass extends StatefulWidget {
   Imageclass({super.key});

  @override
  State<Imageclass> createState() => _ImageclassState();
}

class _ImageclassState extends State<Imageclass> {
  File? _image;
  final picker=ImagePicker();
  Future getImage()async{
    final pickerImage=await picker.pickImage(source: ImageSource.camera);
    setState(() {
      if(
        pickerImage!=null){
        _image = File(pickerImage.path);
      }
      else{
        print('no image is selected');
      }

    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Image Picker'),
      ),
      body: Center(
        child: _image== null ?Text('No Image Selected'):Image.file(_image!),

      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        getImage();
      },child: Icon(Icons.camera),),
    );
  }
}

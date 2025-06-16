import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Insertscreen extends StatefulWidget {
  const Insertscreen({super.key});

  @override
  State<Insertscreen> createState() => _InsertscreenState();
}

class _InsertscreenState extends State<Insertscreen> {
  TextEditingController titlecontroller=TextEditingController();
  TextEditingController descriptioncontroller=TextEditingController();
  bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insert Data'),
      ),
      body: Column(
        children: [
          TextFieldWidget(controller: titlecontroller, hintText: 'Enter title',),
          TextFieldWidget(controller: descriptioncontroller, hintText: 'Enter description',),
          isLoading?CircularProgressIndicator():
          FloatingActionButton(onPressed: ()async{
    try
    {
    isLoading=true;
    setState(() {

    });
    await FirebaseFirestore.instance.collection('insert').add({
    'title': titlecontroller.text,
    'description': descriptioncontroller.text
    });

    isLoading=false;
    titlecontroller.clear();
    descriptioncontroller.clear();
    setState(() {

    });
   // Navigator.pop(context);
    }
    catch (error)
     {
    isLoading=false;
    setState(() {

    });
    print('Error:-${error.toString()}');
    }
    
  },backgroundColor: Colors.blue,child: Icon(Icons.search),)
        ],
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  TextEditingController controller;
  String hintText;
   TextFieldWidget({super.key,required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(horizontal: 18, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),

        ),
        child: TextFormField(
          controller: controller,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white)
          ),
        ));
  }
}

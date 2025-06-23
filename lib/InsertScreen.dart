import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class InsertScreen extends StatefulWidget {
  const InsertScreen({super.key});

  @override
  State<InsertScreen> createState() => _InsertScreenState();
}

class _InsertScreenState extends State<InsertScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insert Data'),
      ),
      body: Column(
        children: [
          TextFieldWidget(
            controller: titleController,
            hintText: 'Enter title',
          ),
          TextFieldWidget(
            controller: descriptionController,
            hintText: 'Enter description',
          ),
          isLoading?CircularProgressIndicator():
          FloatingActionButton(
            onPressed: () async {
              try
              {
                isLoading=true;
                setState(() {

                });
                 String docId=DateTime.now().microsecondsSinceEpoch.toString();
                await FirebaseFirestore.instance.collection('insert').doc(docId).set({
                  'title': titleController.text,
                  'description':descriptionController.text,
                  'docId':docId
                });
                isLoading=false;
                titleController.clear();
                descriptionController.clear();
                setState(() {

                });
                Navigator.pop(context);
              }
              catch(error)
              {
                isLoading=false;
                setState(() {

                });
                print('Error:-${error.toString()}');
              }


              // isLoading=true;
              // setState(() {
              //
              // });
              // await FirebaseFirestore.instance.collection('insert').add({
              //   // key and value
              //   'title': titleController.text,
              //   'description':descriptionController.text
              // }).then((onValue){
              //   isLoading=false;
              //   setState(() {
              //
              //   });
              //   // success message------ snackbar-----
              // }).onError((handleError,error){
              //   print('Error----------------${handleError.toString()}');
              //   isLoading=false;
              //   setState(() {
              //
              //   });
              // });
            },
            backgroundColor: Colors.blue,
          )
        ],
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  TextFieldWidget(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          controller: controller,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.white)),
        ));
  }
}
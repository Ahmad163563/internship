import 'package:firebasedemo/InsertScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen2 extends StatelessWidget {
  final String proposalName;
  TextEditingController tiltController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();
  HomeScreen2({super.key,required this.proposalName,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Step 2/3',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize:30),),
      ),
      body: Padding(padding:
      EdgeInsets.symmetric(vertical: 2,horizontal: 3),
      child:
          Column(
        children: [
          Text(proposalName,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold), ),
          SizedBox(height: 20,),
          Container(
            height: 120,   // 👈 Height set ki
            width: 400,   // 👈 Width set ki
             // 👈 Inner padding
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15,bottom: 15,top: 15,),
                border: InputBorder.none,
                hintText: 'Optional: My Information',
              ),
            ),
          ),
          SizedBox(height: 20,width: 20,),
          Container(
            height: 120,   // 👈 Height set ki
            width: 400,   // 👈 Width set ki
            // 👈 Inner padding
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15,bottom: 15,top: 15),
                border: InputBorder.none,
                hintText: 'Optional: Prospect Info',
              ),
            ),
          ),
          SizedBox(height: 20,),
            TextButton(
              onPressed: (){},
              child: Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(19)
              ),
              child: Center(
                child: Text('Continue',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 10
                ),)
              ),
                       ),
            )
        ],
      )),
    );
  }
}

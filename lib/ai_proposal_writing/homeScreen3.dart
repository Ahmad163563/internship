import 'package:flutter/material.dart';

class HomeScreen3 extends StatelessWidget {
  final String proposalName;
  HomeScreen3({super.key,required this.proposalName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Step 3/3',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w700,fontSize:30),),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(proposalName,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold), ),
        SizedBox(height: 20,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Container(
                height: 120,   // 👈 Height set ki
                width: 400,   // 👈 Width set ki
                // 👈 Inner padding
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15,bottom: 15,top: 15,),
                      border: InputBorder.none,
                      hintText: 'What is the purpose of this proposal',
                    ),
                  ),
                ),
              ),
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
                    contentPadding: EdgeInsets.only(left: 15,bottom: 15,top: 15),
                    border: InputBorder.none,
                    hintText: 'Optional: Additional Information',
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 80,   // 👈 Height set ki
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
                    hintText: 'Optional: Additional Information',
                  ),
                ),
              ),
            ],
          ),
        )
      ],),

    );
  }
}

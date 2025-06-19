import 'package:flutter/material.dart';

class Proposalclass extends StatelessWidget {
  const Proposalclass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Step 1/3',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize:30),),
      ),
      body:
         Column(
          children: [
            
            Text('Select Proposal Type',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text('Business Proposal',style: TextStyle(
                  color: Colors.white
              ),),
              icon: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size.fromHeight(60),
                textStyle: TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      );
    
  }
}

import 'package:firebasedemo/ai_proposal_writing/HomeScreen2.dart';
import 'package:flutter/material.dart';

class Proposalclass extends StatelessWidget {
   Proposalclass({super.key});
  final List<String> items = [
    ' Business Proposal',
    'Project Proposal',
    'Freelance Proposal',
    'Partnership Proposal',
    'Grant Proposal',
    'Research Proposal',
    'Sponsorship Proposal',
    'Custom Proposal',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Step 1/3',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize:30),),
      ),
      body:
         Column(
          children: [
            
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text('Select Proposal Type',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
      Expanded(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  // Jab item pe click ho to dusra screen open karo
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen2()));
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 9,horizontal: 5),
                    child: Text(
                      items[index],
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
          ],
        ),
      );
    
  }
}

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
         Padding(
             padding: const EdgeInsets.all(10.0), // Give overall padding
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start, // Align children to start
               children: [
               Text(
               'Select Proposal Type',
               style: TextStyle(
                 color: Colors.black,
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
               ),
             ),
             SizedBox(height: 15,),
      Expanded(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  // Jab item pe click ho to dusra screen open karo
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen2(proposalName: items[index], )));
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
         ) );
    
  }
}

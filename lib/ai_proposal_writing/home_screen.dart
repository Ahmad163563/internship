import 'package:firebasedemo/ai_proposal_writing/peoposal%20type.dart';
import 'package:firebasedemo/ai_proposal_writing/settings/settings.dart';
import 'package:flutter/material.dart';


class HomeScreenclass extends StatelessWidget {
  const HomeScreenclass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Proposal Writer',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child:
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Setting()),
                );
              },
              icon: Icon(Icons.settings),
            )
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton.icon(
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Proposalclass()));
              },
              icon: const Icon(Icons.auto_fix_high,color: Colors.white,),
              label: const Text('Generate Proposal',style: TextStyle(
                color: Colors.white
              ),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size.fromHeight(60),
                textStyle: const TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'History',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
             Text(
              'No Proposals Created',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 5),
             TextButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Proposalclass()));
             },
               child: Text(
                'Click here to create your first.',
                style: TextStyle(fontSize: 16,color: Colors.black),
                           ),
             ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
//
// class HomeScreenclass extends StatefulWidget {
//   const HomeScreenclass({super.key});
//
//   @override
//   State<HomeScreenclass> createState() => _HomeScreenclassState();
// }
//
// class _HomeScreenclassState extends State<HomeScreenclass> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//            appBar: AppBar(
//              title:
//              Padding(
//                padding: EdgeInsets.only(left: 20),
//                child: Text('Proposal Writer',style: TextStyle(
//                    color: Colors.deepPurpleAccent,
//                    fontSize: 30,
//                  fontWeight: FontWeight.w700
//                ),),
//              ),
//                   actions: [
//
//                     Padding(
//                         padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
//                         child: Icon(Icons.settings,size: 40,color: Colors.grey))
//                   ],
//            ),
//       body: Column(
//
//         children: [
//           SizedBox(height: 40,width: 50,),
//           Container(
//             height: 50,
//             width: 400,
//             decoration: BoxDecoration(
//               color: Colors.deepPurple,
//               borderRadius: BorderRadius.circular(15)
//             ),
//             child:
//             Center(
//               child: Text('Generate Proposal',style: TextStyle(color: Colors.white),),
//             )
//           ),
//
//           Text('History',style: TextStyle(
//             color: Colors.black,
//             fontSize: 20,
//             fontWeight: FontWeight.bold
//           ),)
//         ],
//       ),
//     );
//   }
// }

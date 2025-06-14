import 'package:flutter/material.dart';
class Mycard extends StatefulWidget {
  const Mycard({super.key});

  @override
  State<Mycard> createState() => _MycardState();
}

class _MycardState extends State<Mycard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.teal,
      body:
      Center(
        child: Column(
          children: [
          SizedBox(height: 100,),
            CircleAvatar(
              radius: 70,

                child: Image.asset('lib/assets/click in lake.jpg',fit:BoxFit.cover,height: 80,width: 80,))
          ],
        ),
      ),
    );
  }
}

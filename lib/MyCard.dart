import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  const Mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('lib/assets/click in lake.jpg'),
            ),
            Text(
              'Ahmad Yar',
              style: TextStyle(
                  fontSize: 40.0, color: Colors.white, fontFamily:'Pacifico'),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 20.0, color: Colors.teal[900],fontFamily: 'Poppins '),
            )
          ],
        ),
      ),
    );
  }
}

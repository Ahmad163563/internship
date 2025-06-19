import 'package:firebasedemo/ai_proposal_writing/home_screen.dart';
import 'package:flutter/material.dart';

class Splashclass extends StatefulWidget {
  const Splashclass({super.key});

  @override
  State<Splashclass> createState() => _SplashclassState();
}

class _SplashclassState extends State<Splashclass> {
  @override
  void initState() {
    super.initState();
    // 3 second delay ke baad HomeScreen par navigate karo
    Future.delayed(Duration(seconds: 1), () {
      Navigator.push(context,
        MaterialPageRoute(builder: (context)=>HomeScreenclass()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Center(
        child: CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage('lib/assets/ai.png'),
        ),
      )
    );
  }
}

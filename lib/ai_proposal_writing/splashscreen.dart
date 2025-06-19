import 'package:flutter/material.dart';

class Splashclass extends StatefulWidget {
  const Splashclass({super.key});

  @override
  State<Splashclass> createState() => _SplashclassState();
}

class _SplashclassState extends State<Splashclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('lib/assets/ai.png'),
        ),
      )
    );
  }
}

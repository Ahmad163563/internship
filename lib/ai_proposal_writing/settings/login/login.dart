import 'package:flutter/material.dart';

class Loginclass extends StatefulWidget {
  const Loginclass({super.key});

  @override
  State<Loginclass> createState() => _LoginclassState();
}

class _LoginclassState extends State<Loginclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text('Login',style: TextStyle(
              color: Colors.orange,
              fontSize: 200
            ),),
          )
        ],
      ),
    );
  }
}

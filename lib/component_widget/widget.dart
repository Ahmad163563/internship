import 'package:flutter/material.dart';

class RoundButtonh extends StatelessWidget {

  String name;
  RoundButtonh({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text('Login'),
      ),
    );
  }
}

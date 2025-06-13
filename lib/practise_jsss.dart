import 'package:flutter/material.dart';

class ScreenS extends StatefulWidget {
  const ScreenS({super.key});

  @override
  State<ScreenS> createState() => _ScreenSState();
}

class _ScreenSState extends State<ScreenS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A57D6), // 👈 blue gradient jaisa color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outline,
              size: 100,
              color: Colors.white,
            ),
            SizedBox(height: 20),
            Text(
              'DO IT',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 150),
            Text(
              'v 1.0.0',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
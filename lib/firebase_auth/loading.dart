import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Loading_auth extends StatelessWidget {
  Loading_auth({super.key});

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
              ),
            ),
            Container(
              child: TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            TextButton(
                onPressed: () async {
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: emailController.text.trim(),
                      password: passwordController.text);
                },
                child: Text(
                  'signup',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}

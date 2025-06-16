import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Loading_auth extends StatefulWidget {
  Loading_auth({super.key});

  @override
  State<Loading_auth> createState() => _Loading_authState();
}

class _Loading_authState extends State<Loading_auth> {
  bool isLoading = false;

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
            isLoading
                ? CircularProgressIndicator()
                : TextButton(
                    onPressed: () async {
                      isLoading = true;
                      setState(() {});
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: emailController.text.trim(),
                              password: passwordController.text)
                          .then((onValue) {
                        isLoading = false;
                        setState(() {});
                      }).onError((handleError,error){
                        isLoading=false;
                        setState(() {

                        });
                      });
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

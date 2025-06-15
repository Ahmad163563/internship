import 'package:flutter/material.dart';

class Loading_auth extends StatelessWidget {
   Loading_auth({super.key});

  TextEditingController emailController=TextEditingController();

  TextEditingController passwordController= TextEditingController();

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
            SizedBox(height: 50,),
            Container(
              child: TextFormField(
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
              ),
            ),
            Container(
              child: TextFormField(
                obscureText: true,
                controller: passwordController,
                keyboardType: TextInputType.phone,
              ),
            ),
            TextButton(onPressed: (){}, child: Text('Login',style: TextStyle(
              color: Colors.white
            ),))
          ],
        ),
      ),
    );
  }
}

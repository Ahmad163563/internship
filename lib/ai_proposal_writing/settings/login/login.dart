import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginclass extends StatefulWidget {
  const Loginclass({super.key});

  @override
  State<Loginclass> createState() => _LoginclassState();
}

class _LoginclassState extends State<Loginclass> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 45,),
          Center(
            child: Text('Login',style: TextStyle(
              color: Colors.orange,
              fontSize: 60,
              fontWeight: FontWeight.w600
            ),),
          ),
          Center(
            child: Container(
              height: 430,
              width: 440,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.grey[400]
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text('Welcome Back',style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),),
                  Text('Fill out the information below in\n order to access your account',style: TextStyle(
                    color: Colors.black87,fontSize: 20
                  ),),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Colors.grey
                    ),
                    child:
                    TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                      border: InputBorder.none
                        ),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Colors.grey
                    ),
                    child:
                    TextField(
                      obscureText: _obscurePassword, // 🔑 hide/show password
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_off  // eye closed
                                : Icons.visibility,     // eye open
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword; // toggle state
                            });
                          },
                        ),
                      ),
                  ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 30,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple
                    ),
                    child: TextButton(onPressed: (){}, child: Center(
                      child: Text('Sign In',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),),
                    )),
                  ),
                  SizedBox(height: 15,),
                  InkWell(
                    onTap: (){},
                    child: Text('Forgot Password',style: TextStyle(
                      color: CupertinoColors.systemBlue
                    ),),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont have an account?',style: TextStyle(
                        color: Colors.black87
                      ),),
                      SizedBox(width: 5,),
                      InkWell(
                        onTap: (){},
                        child: Text('Sign up here',style: TextStyle(
                          color: CupertinoColors.activeBlue,
                        ),),
                      )
                    ],
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

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
          SizedBox(height: 55,),
          Center(
            child: Text('Login',style: TextStyle(
              color: Colors.orange,
              fontSize: 60,
              fontWeight: FontWeight.w600
            ),),
          ),
          Center(
            child: Container(
              height: 400,
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
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Colors.grey
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 100,
                        minHeight: 50,
                        maxWidth: 100,
                        maxHeight: 50,
                      ),child: Text('Email')),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

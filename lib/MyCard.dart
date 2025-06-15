import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  const Mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('lib/assets/jin.jpg'),
            ),
            Text(
              'Ahmad Yar',
              style: TextStyle(
                  fontSize: 40.0, color: Colors.white, fontFamily:'Pacifico'),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 20.0, color: Colors.teal[900],fontFamily: 'Poppins '),
            ),
            SizedBox(
              width: 250.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              color: Colors.white,
              child: Row(
                children: [
                  Icon(Icons.email,color: Colors.teal,),
                  SizedBox(width: 20.0,),
                  Text('FlutterPrac@gmail.com',style: TextStyle(fontSize: 20.0),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              color: Colors.white,
              child: Row(
                children: [
                  Icon(Icons.phone,color: Colors.teal,),
                  SizedBox(width: 20.0,),
                  Text('123-123-123',style: TextStyle(fontSize: 20.0),)
                ],
              ),
            ),
                     TextButton(onPressed: (){}, child: Icon(Icons.saved_search_rounded))
            
          ],
        ),
      ),
    );
  }
}

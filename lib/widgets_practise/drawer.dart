import 'package:flutter/material.dart';

class Drawerclass extends StatefulWidget {
  const Drawerclass({super.key});

  @override
  State<Drawerclass> createState() => _DrawerclassState();
}

class _DrawerclassState extends State<Drawerclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Navigation'),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('khan'), 
                accountEmail: Text('123@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: Text('1'),
                ),              
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share',style: TextStyle(
                fontSize: 18,
                color: Colors.blue
              ),),
            ),
            ListTile(
              leading: Icon(Icons.rate_review),
              title: Text('Rate Us',style: TextStyle(
                  fontSize: 18,
                  color: Colors.redAccent
              ),),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home',style: TextStyle(
                  fontSize: 18,
                  color: Colors.green
              ),),
            ),
          ],
        ),
      ),
    );
  }
}

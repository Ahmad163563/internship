import 'package:flutter/material.dart';
class Expadedclass extends StatefulWidget {
  const Expadedclass({super.key});

  @override
  State<Expadedclass> createState() => _ExpadedclassState();
}

class _ExpadedclassState extends State<Expadedclass> {
  List<String> name=['january,february,march,april,may,june,july,august'];
  List<String> countries=['india , usa , pak, china, turkey, bangladesh, azerbaijan, russia']
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expandable Listview Builder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Expanded(child: ListView.builder(
                  itemCount: name.length,
                  itemBuilder: (context,index){
                    return Card(
                      child: ExpansionTile(title: Text(index.toString()),children: [
                        Container(
                          
                        )
                      ],),
                    )
                  }))
          ],
        ),
      ),
    );
  }
}

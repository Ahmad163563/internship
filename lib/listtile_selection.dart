import 'package:flutter/material.dart';

class ListTileclass extends StatefulWidget {
  const ListTileclass({super.key});

  @override
  State<ListTileclass> createState() => _ListTileclassState();
}

class _ListTileclassState extends State<ListTileclass> {
  List<String> name=['january','february','march','april',
    'may','june','july','august','september','october','november','december'];
  List<String> tempArray=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: name.length,
                  itemBuilder: (context,index){
                return 
                  InkWell(
                    onTap: (){
                      setState(() {
                        if(tempArray.contains(name[index].toString())){
                          tempArray.remove(name[index].toString());
                        }
                        else {
                          tempArray.add(name[index].toString());
                        }
                      });
                      print('myvalue');
                      print(tempArray.toString());
                      
                    },
                    child: Card(
                    child: ListTile(
                      title: Text(name[index].toString()),
                      trailing:
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          color:tempArray.contains(name[index].toString()) ? Colors.red : Colors.green,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(tempArray.contains(name[index].toString()) ?'Remove':'Add'),
                        ),
                      ),
                    ),
                                    ),
                  );
              }),
            )
          ],
        ),
      ),
    );
  }
}

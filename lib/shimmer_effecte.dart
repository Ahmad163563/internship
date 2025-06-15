import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Shimmerclass extends StatefulWidget {
  const Shimmerclass({super.key});

  @override
  State<Shimmerclass> createState() => _ShimmerclassState();
}

class _ShimmerclassState extends State<Shimmerclass> {
  bool enable= true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  loadData()async{
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      enable = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shimmer Practise'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: ListView.builder(
            itemCount: 4,
                itemBuilder: (context,index){
                  if(enable){
                    return Shimmer.fromColors(
            
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.grey.shade100,
                      enabled: true,
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                        ),
                        title: Container(
                          height: 10,
                          width: 50,
                          color: Colors.white,
                        ),
                        subtitle: Container(
                          height: 10,
                          width: 50,
                          color: Colors.white,
                        ),
                      ),);
                  }
                  else{
                     return Shimmer.fromColors(
            
                       baseColor: Colors.grey.shade300,
                       highlightColor: Colors.grey.shade100,
                       enabled: enable,
                       child: ListTile(
                         leading: CircleAvatar(
                           radius: 30,
                           backgroundColor: Colors.white,
                         ),
                         title: Text(
                           'JOHN WICK'
                         ),
                         subtitle: Text(
                           'Who Killed My Dog'
                         ),
                       ),);
                  }
                }),
          ),

        ],
      ),
    );
  }
}

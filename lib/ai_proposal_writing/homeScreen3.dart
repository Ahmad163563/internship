import 'package:flutter/material.dart';

class HomeScreen3 extends StatefulWidget {
  final String proposalName;
  HomeScreen3({super.key, required this.proposalName});

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
  String selectedOption = "Select an option";
  List<String> options = [
    "Formal",
    "Persuasive",
    "Casual",
    'Informative',
    'Conversational',
    'Professional',
  ];
  bool option1 = false;
  bool option2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Step 3/3',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              widget.proposalName,
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(children: [
                Container(
                  height: 120, // 👈 Height set ki
                  width: 400, // 👈 Width set ki
                  // 👈 Inner padding
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: 15,
                          bottom: 15,
                          top: 15,
                        ),
                        border: InputBorder.none,
                        hintText: 'What is the purpose of this proposal',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 120, // 👈 Height set ki
                  width: 400, // 👈 Width set ki
                  // 👈 Inner padding
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(left: 15, bottom: 15, top: 15),
                      border: InputBorder.none,
                      hintText: 'Optional: Additional Information',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80, // 👈 Height set ki
                  width: 400, // 👈 Width set ki
                  // 👈 Inner padding
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          value: selectedOption == "Select an option"
                              ? null
                              : selectedOption,
                          hint: Text("Select an option"),
                          icon: Icon(Icons.arrow_drop_down),
                          isExpanded: true,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedOption = newValue!;
                            });
                          },
                          items: options.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList())),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
          
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    activeColor: Colors.red,
                    value: option1,
                    onChanged: ((value) {
                      option1 = value!;
                      setState(() {});
                    }),
                  ),
                  Text('Standard Smart'),
                  Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        activeColor: Colors.red,
                        value: option2,
                        onChanged: ((value) {
                          option2 = value!;
                          setState(() {});
                        }),
                      ),
                    ],
                  ),
                  Text('Standard Smart')
                ]),
          
              ]),
            ),
            SizedBox(height: 10,),
            TextButton(
              onPressed: (){},
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(19)
                ),
                child:
                Center(
                    child: Text('Continue',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 10
                    ),)
                ),
              ),
            )
          
          ]),
        ),);
  }
}

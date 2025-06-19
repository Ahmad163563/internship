import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  // Yeh value decide karegi Light ya Dark mode
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
backgroundColor: Colors.deepPurple,
      ),
        body: Column(

          children: [
            Column(

              children: [
                SizedBox(height: 40,width: 40,),
                Center(
                  child: Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                     color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 5,),
                        Icon(Icons.person),
                        SizedBox(width: 15,),
                        Text('Login'),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_sharp)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 5,),
                        Icon(Icons.question_mark_rounded),
                        SizedBox(width: 15,),
                        Text('Contact Support'),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_sharp)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 5,),
                        Icon(Icons.format_align_center),
                        SizedBox(width: 15,),
                        Text('Privacy Policy'),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_sharp)
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
    );
  }
}

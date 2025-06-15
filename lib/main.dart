import 'package:firebase_core/firebase_core.dart';
import 'package:firebasedemo/InsertScreen.dart';
import 'package:firebasedemo/MyCard.dart';
import 'package:firebasedemo/fetch_data.dart';
import 'package:firebasedemo/newclass.dart';
import 'package:firebasedemo/practise_jsss.dart';
import 'package:firebasedemo/smooth_indicator.dart';
import 'package:firebasedemo/splashscreen.dart';

import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Expadedclass()//Mycard()//FetchData()//SplashScreen()//Insertscreen(),
    );
  }
}


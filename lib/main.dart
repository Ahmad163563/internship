import 'package:firebase_core/firebase_core.dart';
import 'package:firebasedemo/InsertScreen.dart';
import 'package:firebasedemo/MyCard.dart';
import 'package:firebasedemo/ai_proposal_writing/settings/login/login.dart';
import 'package:firebasedemo/ai_proposal_writing/splashscreen.dart';
import 'package:firebasedemo/fetch_data.dart';
import 'package:firebasedemo/firebase_auth/loading.dart';
import 'package:firebasedemo/listtile_selection.dart';
import 'package:firebasedemo/newclass.dart';
import 'package:firebasedemo/practise_jsss.dart';
import 'package:firebasedemo/shimmer_effecte.dart';
import 'package:firebasedemo/smooth_indicator.dart';
import 'package:firebasedemo/widgets_practise/botton_navigation.dart';
import 'package:firebasedemo/widgets_practise/draggable%20widgets.dart';
import 'package:firebasedemo/widgets_practise/drawer.dart';
import 'package:firebasedemo/widgets_practise/gallery_video_picker.dart';
import 'package:firebasedemo/widgets_practise/image_picker.dart';

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
      theme: ThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      home: Mycard()//FetchData()//Insertscreen()//Splashclass()//Bottomclass()//Videopicker()//Drawerclass()//Imageclass()//DragableClass()//Loading_auth()//Insertscreen()//Mycard()//Shimmerclass()//ListTileclass()Mycard()//FetchData()//SplashScreen()//Insertscreen(),
    );
  }
}


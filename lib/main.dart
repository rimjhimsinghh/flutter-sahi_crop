import 'package:flutter/material.dart';
import 'package:sahi_crop/screens/authenticate/login.dart';
//import 'package:sahi_crop/Wrapper.dart';
import 'package:sahi_crop/screens/gettingstarted.dart';

void main() {
  //main function that runs when flutter app first starts
  runApp(
      MyApp()); //fires 'runapp' function which registers 'myapp' as our root widget
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GettingStartedScreen(),
      //routes: {},
    );
  }
}

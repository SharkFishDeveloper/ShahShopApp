import 'package:flutter/material.dart';
import 'package:kaif_app/screens/buynow_screen.dart';
import 'package:kaif_app/screens/firstScreen.dart';

void main()=>runApp(StartingPage());


class StartingPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
      routes:{
        '/firstScreen': (context)=>FirstScreen(),
      },
    );
  }
}

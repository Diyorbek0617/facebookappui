import 'package:flutter/material.dart';
import 'package:facebookappui/pages/home_page.dart';

main(){
  runApp(MaterialApp(
   debugShowCheckedModeBanner: false,
    theme:ThemeData.dark(),
    home: Home_page(),
    routes: {
      Home_page.id:(context)=>Home_page(),
    },
  ),
  );
}
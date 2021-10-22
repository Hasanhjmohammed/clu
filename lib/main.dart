import 'package:clu/Screen/room_screen.dart';
import 'package:clu/context.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'Screen/Home_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "clu_hose",
      theme: ThemeData(
        primaryColor: Color(0XFFF2F0E4),
        accentColor:kAccentcolor,
        iconTheme: IconThemeData(color: Colors.black),
        appBarTheme: AppBarTheme(backgroundColor:kBackgroungcolor ),
        scaffoldBackgroundColor:kBackgroungcolor ,
        fontFamily:GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),

      home: HomeScreen(),
    );
  }
}


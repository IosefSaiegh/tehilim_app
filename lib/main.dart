import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tehilim/screens/pantalla_p.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tehilim - תהילים',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue, //#2196f3 - azul
        appBarTheme: AppBarTheme(
          centerTitle: true,
          titleTextStyle: GoogleFonts.rubik(),
        ),
      ),
      home: PantallaPrincipal(),
    );
  }
}

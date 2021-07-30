import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'package:tehilim/screens/pantalla_p.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.red,
  ));
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
      home: SplashScreenView(
        navigateRoute: PantallaPrincipal(),
        duration: 6000,
        imageSize: 130,
        speed: 3,
        imageSrc: "assets/tehilimlogo.png",
        backgroundColor: Colors.white,
        text: 'תהילים',
        textType: TextType.TyperAnimatedText,
        textStyle: GoogleFonts.rubik(
          fontSize: 30.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TehilimContinuoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'גמירת ספר תהילים משותף',
              style: GoogleFonts.assistant(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

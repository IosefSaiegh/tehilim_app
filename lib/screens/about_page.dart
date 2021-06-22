import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'אודות',
          style: GoogleFonts.rubik(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 20.0,
              bottom: 10,
            ),
            child: Text(
              'רפואה שלימה',
              style: GoogleFonts.assistant(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
              right: 10.0,
            ),
            child: Text(
              'ישראל מרדכי בן רחל',
              textAlign: TextAlign.right,
              style: GoogleFonts.assistant(
                fontSize: 21.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.0,
              right: 10.0,
            ),
            child: Text(
              'הרב רפא-ל גבריא-ל אליהו בן רחל חיה',
              textAlign: TextAlign.right,
              style: GoogleFonts.assistant(
                fontSize: 21.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.0,
              right: 10.0,
            ),
            child: Text(
              'רות בת רוזה',
              textAlign: TextAlign.right,
              style: GoogleFonts.assistant(
                fontSize: 21.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20.0,
              bottom: 10,
            ),
            child: Text(
              'לעילוי נשמת',
              style: GoogleFonts.assistant(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.0,
              right: 10.0,
            ),
            child: Text(
              'משה בן מרים',
              textAlign: TextAlign.right,
              style: GoogleFonts.assistant(
                fontSize: 21.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.0,
              right: 10.0,
            ),
            child: Text(
              'אליהו בן אסתר',
              textAlign: TextAlign.right,
              style: GoogleFonts.assistant(
                fontSize: 21.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.0,
              right: 10.0,
            ),
            child: Text(
              'אליהו בן זימבול',
              textAlign: TextAlign.right,
              style: GoogleFonts.assistant(
                fontSize: 21.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.0,
              right: 10.0,
            ),
            child: Text(
              'דוד בן רינה',
              textAlign: TextAlign.right,
              style: GoogleFonts.assistant(
                fontSize: 21.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

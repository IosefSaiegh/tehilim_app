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
              top: 20,
              right: 20,
              left: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'האפליקציה נוצרה ב2021 ללא מטרות רווח לעילוי נשמת:',
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.assistant(
                    fontSize: 17.5,
                  ),
                ),
                Text(
                  '''
משה בן מרים זצ"ל
דוד בן רינה זצ"ל
אליהו בן אסתר זצ"ל
אברהם בן מזל זצ"ל
שרה בת רחל זצ"ל
אליהו בן זימבול זצ"ל
''',
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.assistant(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

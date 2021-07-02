import 'package:flutter/material.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:tehilim/pages/pordia.dart';
import 'package:tehilim/pages/selectPage.dart';

class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'תהילים',
            style: GoogleFonts.rubik(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          bottom: TabBar(
            indicatorWeight: 4.0,
            unselectedLabelStyle: GoogleFonts.assistant(
              fontSize: 20,
            ),
            labelStyle: GoogleFonts.assistant(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            tabs: [
              Tab(
                text: 'לפי יום',
              ),
              Tab(
                text: 'בחירת פרק',
              ),
              Tab(
                text: 'גמירת ספר משותף',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: PorDia(),
            ),
            Center(
              child: SelectPage(),
            ),
            Center(
              child: Text(''),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showBottomSheet(
              context: context,
              builder: _showModalBottomSheet(context),
            );
          },
          child: Icon(Icons.info_outline_rounded),
        ),
      ),
    );
  }

  _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
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
              ListTile(
                leading: Icon(
                  RpgAwesome.candle_fire,
                  color: Colors.orange,
                ),
                title: Text(
                  'משה בן מרים',
                  textAlign: TextAlign.right,
                  style: GoogleFonts.assistant(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  RpgAwesome.candle_fire,
                  color: Colors.orange,
                ),
                title: Text(
                  'אליהו בן אסתר',
                  textAlign: TextAlign.right,
                  style: GoogleFonts.assistant(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  RpgAwesome.candle_fire,
                  color: Colors.orange,
                ),
                title: Text(
                  'אליהו בן זימבול',
                  textAlign: TextAlign.right,
                  style: GoogleFonts.assistant(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  RpgAwesome.candle_fire,
                  color: Colors.orange,
                ),
                title: Text(
                  'דוד בן רינה',
                  textAlign: TextAlign.right,
                  style: GoogleFonts.assistant(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          );
        });
  }
}

// onPressed: () => Navigator.push(
//   context,
//   MaterialPageRoute(
//     builder: (context) => AboutPage(),
//   ),
// ),

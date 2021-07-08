import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TehilimContinuoPage extends StatefulWidget {
  @override
  State<TehilimContinuoPage> createState() => _TehilimContinuoPageState();
}

class _TehilimContinuoPageState extends State<TehilimContinuoPage> {
  List<String> opcionesFormulario = [
    'לרפואה שלמה',
    'להצלחה',
    'לזיווג הגון',
    'לזרע של קיימא',
  ];
  String? dropdownValue = 'לרפואה שלמה';
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
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) {
                  return AlertDialog(
                    title: Text('יצירת ספר תהילים'),
                    content: Column(
                      children: [
                        Form(
                          child: Column(
                            children: [
                              
                            ],
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Ok',
                          style: GoogleFonts.raleway(),
                        ),
                      )
                    ],
                  );
                },
              );
            },
            child: Text('לפתיחת קריאת ספר תהילים חדשה'),
          )
        ],
      ),
    );
  }
}

              // showDialog(
              //   context: context,
              //   builder: (context) {
              //     return AlertDialog(
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(20.0),
              //       ),
              //       title: Text('יצירת ספר תהילים'),
              //       content: Form(
              //         autovalidateMode: AutovalidateMode.always,
              //         child: Column(
              //           children: [
              //             Row(
              //               children: [
              //                 //Elegir si refue shelema, leiluy nismat
              //                 DropdownButtonFormField<String>(
              //                   value: dropdownValue,
              //                   onChanged: (String? newValue) {
              //                     setState(() {
              //                       dropdownValue = newValue;
              //                     });
              //                   },
              //                   items: opcionesFormulario
              //                       .map<DropdownMenuItem<String>>(
              //                     (String value) {
              //                       return DropdownMenuItem<String>(
              //                         value: value,
              //                         child: Padding(
              //                           padding: EdgeInsets.symmetric(
              //                             horizontal: 5.0,
              //                           ),
              //                           child: Text(
              //                             value,
              //                             style: GoogleFonts.assistant(
              //                               fontSize: 20.0,
              //                             ),
              //                           ),
              //                         ),
              //                       );
              //                     },
              //                   ).toList(),
              //                 ),
              //                 TextFormField(),
              //               ],
              //             ),
              //           ],
              //         ),
              //       ),
              //       actions: [
              //         TextButton(
              //           onPressed: () {},
              //           child: Text('המשך'),
              //         ),
              //         TextButton(
              //           onPressed: () {
              //             Navigator.pop(context);
              //           },
              //           child: Text('בטל'),
              //         ),
              //       ],
              //     );
              //   },
              // );
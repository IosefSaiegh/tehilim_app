import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tehilim/pages/crear_libro.dart';
import 'package:tehilim/pages/entrar_libro.dart';

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
  final formKey = GlobalKey<FormState>();
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.resolveWith((states) => 5),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CrearLibroPage()),
                );
              },
              child: Text(
                'לפתיחת קריאת ספר תהילים חדשה',
                style: GoogleFonts.assistant(
                  fontSize: 17.5,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.resolveWith((states) => 5),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EntrarLibroPage()),
                );
              },
              child: Text(
                'לכניסה לקריאת ספר',
                style: GoogleFonts.assistant(
                  fontSize: 17.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //mostrar dialogo de nuevo libro

}

              
// DropdownButtonFormField<String>(
//   value: dropdownValue,
//   onChanged: (String? newValue) {
//     setState(() {
//       dropdownValue = newValue;
//     });
//   },
//   items: opcionesFormulario
//       .map<DropdownMenuItem<String>>(
//     (String value) {
//       return DropdownMenuItem<String>(
//         value: value,
//         child: Padding(
//           padding: EdgeInsets.symmetric(
//             horizontal: 5.0,
//           ),
//           child: Text(
//             value,
//             style: GoogleFonts.assistant(
//               fontSize: 20.0,
//             ),
//           ),
//         ),
//       );
//     },
//   ).toList(),
// ),
              

// Container(
//   width: 100,
//   child: DropdownButtonFormField<String>(
//     decoration: InputDecoration(),
//     value: dropdownValue,
//     onChanged: (String? newValue) {
//       setState(() {
//         dropdownValue = newValue;
//       });
//     },
//     items: opcionesFormulario
//         .map<DropdownMenuItem<String>>(
//       (String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: 5.0,
//             ),
//             child: Text(
//               value,
//               style: GoogleFonts.assistant(
//                 fontSize: 20.0,
//               ),
//             ),
//           ),
//         );
//       },
//     ).toList(),
//   ),
// ),
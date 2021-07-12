import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tehilim/models/libro_model.dart';

class CrearLibroPage extends StatefulWidget {
  @override
  State<CrearLibroPage> createState() => _CrearLibroPageState();
}

class _CrearLibroPageState extends State<CrearLibroPage> {
  final formKey = GlobalKey<FormState>();
  LibroElement libro = LibroElement();
  final FirebaseApp app = FirebaseApp(name: 'tehilim-421f2');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'יצירת ספר תהילים',
          style: GoogleFonts.rubik(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Container(
                          width: 250,
                          child: TextFormField(
                            onSaved: (value) => libro.nombre = value,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'שם לא תקין';
                              } else {
                                return null;
                              }
                            },
                            textAlign: TextAlign.right,
                            textCapitalization: TextCapitalization.words,
                            style: GoogleFonts.assistant(
                              fontSize: 20.0,
                            ),
                            decoration: InputDecoration(
                              labelStyle: GoogleFonts.assistant(),
                              labelText: 'שם לתפילה',
                              alignLabelWithHint: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7.5),
                              ),
                              errorStyle: GoogleFonts.assistant(),
                            ),
                            textDirection: TextDirection.rtl,
                            keyboardType: TextInputType.name,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            TextButton(
                              onPressed: _submit,
                              child: Text(
                                'צור קריאת ספר חדש',
                                style: GoogleFonts.assistant(),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'בטל',
                                style: GoogleFonts.assistant(),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _submit() {
    if (!formKey.currentState!.validate()) return;
    // ignore: unnecessary_statements
    formKey.currentState!.save;
    print(libro.nombre);
  }
}

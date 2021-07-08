import 'package:flutter/material.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:tehilim/pages/pordia.dart';
import 'package:tehilim/pages/selectPage.dart';
import 'package:tehilim/pages/tehilim_continuo.dart';

class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //Seleccion de ventanas
      initialIndex: 2,
      length: 3,
      child: Scaffold(
        //Scaffold es la pantalla
        appBar: AppBar(
          //El header de la pantalla
          centerTitle: true,
          title: Text(
            'תהילים',
            //Text de appBar
            style: GoogleFonts.rubik(
              //estilo con fuente
              fontSize: 30, //tamanio
              fontWeight: FontWeight.w500, //grosor
            ),
          ),
          actions: [
            //Acciones de appbar
            IconButton(
              // Boton con icono
              onPressed: () {
                //funcion que hace al hacer clic
                _showModalBottomSheet(context);
              },
              icon: Icon(Icons.info_outline_rounded), // Icono
            ),
          ],
          bottom: TabBar(
            //Para selccionar ventana de app
            indicatorWeight: 2.0, // el grosor del indicador de la pantalla
            unselectedLabelStyle: GoogleFonts.assistant(
              // el estilo de texto de ventana NO SELECCIONADA
              fontSize: 20, //Tamanio
            ),
            labelStyle: GoogleFonts.assistant(
              //Estilo de texto en ventana SI SELECCIONADA
              fontSize: 20, //Tamanio
              fontWeight: FontWeight.w600, //Grosor
            ),
            tabs: [
              Tab(
                //Una ventana
                text: 'לפי יום',
              ),
              Tab(
                //Una ventana
                text: 'בחירת פרק',
              ),
              Tab(
                //Una ventana
                text: 'גמירת ספר משותף',
              ),
            ],
          ),
        ),
        body: TabBarView(
          //En cada TAB() que se va mostra
          children: [
            Center(
              //en uno
              child: PorDia(),
            ),
            Center(
              //en el segundo
              child: SelectPage(),
            ),
            Center(
              //y en el ultimo
              child: TehilimContinuoPage(),
            ),
          ],
        ),
      ),
    );
  }
  //Accion a disparar cuando haga clic en el boton de actions[], que vimos arriba
  _showModalBottomSheet(BuildContext context) {
    //Mostrar como footer con opacidad a lo de arriba
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                //Padding
                top: 10.0,//de arriba
                bottom: 10.0,//de abajo
              ),
              child: Text(
                'לעילוי נשמת',
                style: GoogleFonts.assistant(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center, //Alineamento de texto
              ),
            ),
            ListTile(
              //objeto de lista
              leading: Icon(
                //parte que va a lado de texto
                RpgAwesome.candle_fire,
                color: Colors.orange, //color de icono
              ),
              title: Text(
                'משה בן מרים',
                textAlign: TextAlign.right,
                style: GoogleFonts.assistant(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Divider(),
              //divididor
            ),
            ListTile(
              leading: Icon(
                RpgAwesome.candle_fire,
                color: Colors.orange,
              ),
              title: Text(
                'אליהו בן אסתר',
                textAlign: TextAlign.right,
                style: GoogleFonts.assistant(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Divider(),
            ),
            ListTile(
              leading: Icon(
                RpgAwesome.candle_fire,
                color: Colors.orange,
              ),
              title: Text(
                'אליהו בן זימבול',
                textAlign: TextAlign.right,
                style: GoogleFonts.assistant(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Divider(
                thickness: 0.5,
              ),
            ),
            ListTile(
              leading: Icon(
                RpgAwesome.candle_fire,
                color: Colors.orange,
              ),
              title: Text(
                'דוד בן רינה',
                textAlign: TextAlign.right,
                style: GoogleFonts.assistant(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:tehilim/models/libro_model.dart';

class LibrosProvider {
  final String _url =
      'https://tehilim-421f2-default-rtdb.firebaseio.com/libros.json';

  Future<bool> crearLibro(LibroElement libro) async {
    final urlParseada = Uri.parse(_url);
    final resp = await http.post(urlParseada, body: libroToJson(libro));
    final decodedData = json.decode(resp.body);
    print(decodedData);
    return true;
  }
}

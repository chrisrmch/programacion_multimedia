import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    // cargarData(); // Opcional: Puedes no cargar en el constructor
  }

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas']; 
    return opciones;
  }
}

final menuProvider = _MenuProvider();

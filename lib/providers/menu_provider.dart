import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';

final menuProvider = _MenuProvider();

class _MenuProvider {
  List<dynamic> lista = [];
  _MenuProvider() {
    readJSON();
  }

  Future<List<dynamic>> readJSON() async {
    print("entrando a JSON reader");
    final response = await rootBundle.loadString("data/menu_opts.json");

    Map map = json.decode(response);
    lista = map['rutas'];
    print("final redaer JSON");
    return lista;
    /* 
      print(map[("rutas")]);

      map.forEach((key, value) {
          print(key);

      });


     List m = map['rutas'];
     
     m.forEach((element) {

        print(element);
      });


     Map m2 = m.asMap().cast();

      print((m2[0])['ruta']);
      m2.forEach((key, value) {print(value['ruta']);});*/
  }
}

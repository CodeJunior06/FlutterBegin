import 'package:flutter/material.dart';
import 'package:test_flutter/src/pages/contador_pages.dart';
import 'package:test_flutter/src/pages/home.dart';
import 'package:test_flutter/src/pages/home_page.dart';
import 'package:test_flutter/src/pages/listas.dart';
import 'package:test_flutter/src/pages/row.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: Center(child: home_json()));

    // ignore: dead_code
    throw UnimplementedError();
  }
}

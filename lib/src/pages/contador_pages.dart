import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
  // TODO: implement createState

}

class _ContadorPageState extends State<ContadorPage> {
  final estiloTexto = TextStyle(fontSize: 25);
  int _conteo = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Titulo')),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text('Hola Santiago, Conteo En: '),
            Text('$_conteo', style: estiloTexto)
          ])),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.access_alarm),
          onPressed: () {
            setState(() {
              _conteo++;
            });
          }),
    );
    // ignore: dead_code
    throw UnimplementedError();
  }
}

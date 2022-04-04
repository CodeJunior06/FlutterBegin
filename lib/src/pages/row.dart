import 'package:flutter/material.dart';

class RowTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
  // TODO: implement createState

}

class _ContadorPageState extends State<RowTest> {
  final estiloTexto = TextStyle(fontSize: 25);
  int _conteo = 1;
  late int estado;

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
        floatingActionButton: _createRow());
    // ignore: dead_code
    throw UnimplementedError();
  }

  Widget _createRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 30,
        ),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero),
            onPressed: () => _createPressed(0)),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            child: Icon(Icons.smoking_rooms_outlined),
            onPressed: () => _createPressed(1)),
        SizedBox(width: 20.0),
        FloatingActionButton(
            child: Icon(Icons.minimize), onPressed: () => _createPressed(2))
      ],
    );
  }

  void _createPressed(int opc) {
    switch (opc) {
      case 0:
        _conteo = 0;
        estado = _conteo;
        break;
      case 1:
        _conteo++;
        estado = _conteo;
        break;
      case 2:
        _conteo--;
        estado = _conteo;
        break;
    }
    setState(() {
      estado;
    });
  }
}

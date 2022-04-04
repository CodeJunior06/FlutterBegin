import 'package:flutter/material.dart';

class Listas extends StatelessWidget {
  final lst = ["1", "2", "3", "4", "5", "6", "7", "8", "9"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Listas Flutter"),
          centerTitle: true,
        ),
        body: ListView(
          children: _funListTwo(),
        ));
  }

  List<Widget> _funList() {
    List<Widget> list = <Widget>[];

    for (String opt in lst) {
      final tempWidget = ListTile(title: Text(opt));

      list
        ..add(tempWidget)
        ..add(Divider());
    }
    return list;
  }

  List<Widget> _funListTwo() {
    return lst.map((item) {
      return Column(children: <Widget>[
        ListTile(
            title: Text(item),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {}),
        const Divider()
      ]);
    }).toList();
  }
}

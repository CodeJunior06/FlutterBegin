import 'package:flutter/material.dart';
import 'package:test_flutter/providers/menu_provider.dart';
import 'package:test_flutter/utils/get_icon.dart';

class home_json extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Json")),
      body: Center(child: Container(child: lstView())),
    );
  }

  Widget lstView() {
    //print(menuProvider.lista);

    /*
    menuProvider.readJSON().then((opc){
        print("Santiago List");
        print(opc);
    });
    
    return ListView(
      children: lstTile()
    );
    */
    return FutureBuilder(
        future: menuProvider.readJSON(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          print('builder');
          print(snapshot.data);

          return ListView(children: lstTile(snapshot.data));
        });
  }

  List<Widget> lstTile(List<dynamic>? lst) {
    final List<Widget> temporal = [];
    lst?.forEach((opt) {
      final tmp = ListTile(
        title: Text(opt["texto"]),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.add),
        onTap: () {},
      );

      temporal
        ..add(tmp)
        ..add(Divider());
    });
    return temporal;
    /*   return [
      ListTile(
          title: Text(
        "Opcion 1",
      )),
      Divider(),
      ListTile(
          title: Text(
        "Opcion 2",
      )),
      Divider(),
      ListTile(
          title: Text(
        "Opcion 3",
      )),
    ];*/
  }
}


import 'package:flutter/material.dart';
import 'package:componentes_flutter/src/providers/menu_provider.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
        centerTitle: true,
      ),
      body: _list(),
    );
  }

  Widget _list() {

    // menuProvider.loadData();
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data),
        );
      }
    );
  }

  List<Widget>_listItems(List<dynamic> data) {
    final List<Widget> options = [];

    data.forEach( (option) {
      final widgetTemp = ListTile(
        leading: Icon( Icons.add, color: Colors.blue, ),
        title: Text(option['texto']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {

        },
      );

      options..add(widgetTemp)
            ..add(Divider());
    });

    return options;
  }
}
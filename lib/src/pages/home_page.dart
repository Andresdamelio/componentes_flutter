
import 'package:flutter/material.dart';
import 'package:componentes_flutter/src/providers/menu_provider.dart';
import 'package:componentes_flutter/src/utils/icon_string_util.dart';
import 'package:componentes_flutter/src/pages/alert_page.dart';

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
          children: _listItems(snapshot.data, context),
        );
      }
    );
  }

  List<Widget>_listItems(List<dynamic> data, BuildContext context) {

    final List<Widget> options = [];
    data.forEach( (option) {
      final widgetTemp = ListTile(
        leading: getIcon(option['icon']),
        title: Text(option['texto']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          // final route = MaterialPageRoute(
          //   builder: (context) => AlertPage()
          // );
          // Navigator.push(context, route);

          Navigator.pushNamed(context, option['ruta']);
        },
      );

      options..add(widgetTemp)
            ..add(Divider());
    });

    return options;
  }
}
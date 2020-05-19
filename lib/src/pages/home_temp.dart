import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
        centerTitle: true,
      ),
      body: ListView(
        children: _createItemsSmall()
      )
    );
  }

  List<Widget> _createItems() {

    List<Widget> list = new List<Widget>();

    for (String option in options) {
      final tempWidget = ListTile(
        title: Text( option ),
      );
      list..add(tempWidget)
          ..add( Divider() );
    }

    return list;
  }

  List<Widget> _createItemsSmall() {

    return options.map( ( option ) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text( option + '!'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon( Icons.add),
            trailing: Icon( Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ]
      );
    }).toList();
  }
}
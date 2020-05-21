
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards')
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTypeOne()
        ],
      ),
    );
  }

  Widget _cardTypeOne() {
    return Card(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue ),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Aqui estamos con la descripcion de la tarjeta que queremos ver para cubrir la tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ]
      ),
    );
  }
}
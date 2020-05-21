
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
          _typeOneCard(),
          SizedBox( height: 30.0, ),
          _typeTwoCard(),
          SizedBox( height: 30.0, ),
          _typeOneCard(),
          SizedBox( height: 30.0, ),
          _typeTwoCard(),
          SizedBox( height: 30.0, ),
          _typeOneCard(),
          SizedBox( height: 30.0, ),
          _typeTwoCard(),
          SizedBox( height: 30.0, ),
          _typeOneCard(),
          SizedBox( height: 30.0, ),
          _typeTwoCard(),
          SizedBox( height: 30.0, ),
          _typeOneCard(),
          SizedBox( height: 30.0, ),
          _typeTwoCard(),
          SizedBox( height: 30.0, ),
          _typeOneCard(),
          SizedBox( height: 30.0, ),
          _typeTwoCard(),
          SizedBox( height: 30.0, ),
          _typeOneCard(),
          SizedBox( height: 30.0, ),
          _typeTwoCard(),
          SizedBox( height: 30.0, ),
        ],
      ),
    );
  }

  Widget _typeOneCard() {
    return Card(
      color: Colors.white,
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
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

  Widget _typeTwoCard() {
    final card = Container(
      //clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80'),
            placeholder: AssetImage('assets/original.gif'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Paisaje')
          )
        ]
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0, -10.0 )
        )
      ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
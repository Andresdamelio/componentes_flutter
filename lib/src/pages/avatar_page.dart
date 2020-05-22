import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://as.com/futbol/imagenes/2019/10/08/primera/1570569991_660269_1570570053_noticia_normal_recorte1.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('AD'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://as.com/futbol/imagenes/2019/10/08/primera/1570569991_660269_1570570053_noticia_normal_recorte1.jpg'),
          placeholder: AssetImage('assets/original.gif'),
          fadeInDuration: Duration( milliseconds: 300),
        ),
      )
    );
  }
}
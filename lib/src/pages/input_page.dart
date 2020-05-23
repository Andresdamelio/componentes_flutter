import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric( horizontal: 10.0, vertical: 20.0 ),
        children: <Widget>[
          _createInput(),
          Divider(),
          _createPerson()
        ]
      )
    );
  }

  Widget _createInput() {
    return TextField(
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${ _name.length }'),
        hintText: 'John Doe' ,
        labelText: 'Escribe tu nombre aquí',
        icon: Icon( Icons.account_circle),
        helperText: 'Solo texto',
        suffixIcon: Icon( Icons.accessibility_new )
      ),
      onChanged: ( valor ) {
        setState(() {
          _name = valor;
        });
      },
    );
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('El nombre es $_name '),
    );
  }
}
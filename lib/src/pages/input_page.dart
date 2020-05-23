import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _name = 'Jhon Doe';
  String _email = 'example@gmail.com';


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
          _createEmail(),
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
        labelText: 'Nombre',
        helperText: 'Solo caracteres alfabeticos',
        suffixIcon: Icon( Icons.account_circle )
      ),
      onChanged: ( valor ) => setState(() {
          _name = valor;
        })
    );
  }

  Widget _createEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'name@example.com' ,
        labelText: 'Correo electrónico',
        suffixIcon: Icon( Icons.mail )
      ),
      onChanged: ( valor ) => setState(() {
          _email = valor;
        })
    );
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('Nombre: $_name '),
      subtitle: Text('Email: $_email '),
    );
  }

}
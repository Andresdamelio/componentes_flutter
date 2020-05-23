import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _name = 'Jhon Doe';
  String _email = 'example@gmail.com';
  String _fecha = '';
  String _optionSelected = 'Volar';

  List<String> _powers = [
    'Volar',
    'Rayos X',
    'Super Aliento',
    'Super Fuerza'
  ];

  TextEditingController _inputFieldDateController = new TextEditingController();

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
          _createPassword(),
          Divider(),
          _createDate( context ),
          Divider(),
          _createDropDown(),
          Divider(),
          _createPerson()
        ]
      )
    );
  }


  /* Input de tipo texto */
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

  Widget _createPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: '********',
        labelText: 'Contraseña',
        suffixIcon: Icon( Icons.lock )
      ),
    );
  }

  Widget _createDate( BuildContext context ) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Fecha de nacimiento',
        labelText: 'Fecha de nacimiento',
        suffixIcon: Icon( Icons.calendar_today )
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _showSelect( context );
      },
    );
  }

  void _showSelect(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
      locale: Locale('es', 'ES')
    );

    if( picked != null ) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }
  }

  Widget _createDropDown() {
    return Row(
      children: <Widget>[
        Icon( Icons.select_all ),
        SizedBox( width: 30.0),
        Expanded(
            child: DropdownButton(
            value: _optionSelected,
            items: _getItemsDropDown(),
            onChanged: ( option ) {
              setState(() {
                _optionSelected = option;
              });
            }
          ),
        ),
      ],
    );
  }

  List<DropdownMenuItem<String>> _getItemsDropDown() {
    List<DropdownMenuItem<String>> list = new List();

    _powers.forEach( ( power ) {
      list.add(
        DropdownMenuItem(
          child: Text(power),
          value: power,
        )
      );
    });

    return list;
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('Nombre: $_name '),
      subtitle: Text('Email: $_email '),
      trailing: Text(_optionSelected),
    );
  }

}
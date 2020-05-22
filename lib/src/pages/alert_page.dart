
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Mostrar alerta'),
            color: Colors.blue,
            textColor: Colors.white,
            shape: StadiumBorder(),
            onPressed: () => _showAlert(context),
          ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.keyboard_arrow_left),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: ( context ) {
        return AlertDialog(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
          title: Text('Titulo', style: TextStyle(fontSize: 20)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es el contenido de la caja de la alerta', style: TextStyle(fontSize: 18),),
              Divider(),
              FlutterLogo( size: 70,),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancelar', style: TextStyle(fontSize: 18)),
              onPressed: () => Navigator.of( context ).pop(),
            ),
            FlatButton(
              child: Text('Aceptar', style: TextStyle(fontSize: 18)),
              onPressed: () => Navigator.of( context ).pop(),
            )
          ],
        );
      }
    );
  }
}
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valueSlide = 100.0;
  bool   _blockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider')
      ),
      body: Container(
        padding: EdgeInsets.only( top: 50.0 ),
        child: Column(
          children: <Widget>[
            _createSlide(),
            Divider(),
            _createCheckBox(),
            Divider(),
            Expanded(child: _createImage()),
          ]
        ),
      )
    );
  }

  Widget _createSlide() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: '$_valueSlide',
      value: _valueSlide,
      min: 10.0,
      max: 400.0,
      onChanged: ( _blockCheck ) ?
      null :
      ( val ){
        setState(() {
          _valueSlide = val;
        });
      },
    );
  }

  Widget _createImage() {
    return FadeInImage(
      image: NetworkImage('https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80'),
      placeholder: AssetImage('assets/original.gif'),
      fadeInDuration: Duration( milliseconds: 200 ),
      width: _valueSlide,
      fit: BoxFit.contain,
    );
  }

  Widget _createCheckBox() {
    // return Checkbox(
    //   value: _blockCheck,
    //   onChanged: ( val ) {
    //     setState(() {
    //       _blockCheck = val;
    //     });
    //   }
    // );

    return CheckboxListTile(
      value: _blockCheck,
      title: Text('Habilitar Slide'),
      onChanged: ( val ) {
        setState(() {
          _blockCheck = val;
        });
      }
    );
  }
}
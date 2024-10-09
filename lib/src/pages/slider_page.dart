import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  bool _bloquearCheck = false;
  double _valorSlider = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Slider'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              _crearSlider(),
              Divider(),
              _crearCheckBox(),
              Expanded(child: _crearImagen()),
            ],
          ),
        ));
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamaño de la imagen',
        // divisions: 20,
        value: _valorSlider,
        min: 10.0,
        max: 300.0,
        onChanged: (_bloquearCheck)
            ? null
            : (valor) {
                setState(() {
                  _valorSlider = valor;
                });
              });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://www.pikpng.com/pngl/b/542-5426708_kamehameha-transparent-gohangoku-e-gohan-vs-cell.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    return CheckboxListTile(
        title: Text('Bloquear slider'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor!;
          });
        });
  }
}

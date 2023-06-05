import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget {
  const SliderPage({super.key});
  @override
  State<SliderPage> createState() => _SliderPageState();
}
class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
              ),
          ],
        ),
      ),
    );
  }


  Widget _crearSlider() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      //divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: ( _bloquearCheck ) ? null : ( valor ){

        setState(() {
          _valorSlider = valor;
        });

      },
    );

  }

  Widget _checkBox(){

    // return Checkbox(
    //   value: _bloquearCheck, 
    //   onChanged: (valor){
    //     setState(() {
    //       _bloquearCheck = valor!;
    //     });
    //   },
    //   );

    return  CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor!;
        });
      },

    );

  }


  Widget _crearSwitch(){
    return  SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      },

    );
  }

  Widget _crearImagen() {

    return Image(
      image: NetworkImage('https://preview.redd.it/r3lcc7gf64791.png?width=540&format=png&auto=webp&s=9d32ec46f884486fd59dfd01453bf5d07bf30d75'),
      width: _valorSlider,
      fit: BoxFit.contain,
      );
  }
}

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
           SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2()
        ],
      ),
    );
}

Widget _cardTipo1() {

  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon( Icons.photo_album, color: Colors.blue),
          title: Text('Dulzura'),
          subtitle: Text('Madrecita mía, madrecita tierna, déjame decirte, dulzuras extremas. Es tuyo mi cuerpo que juntaste en ramo, deja revolverlo sobre tu regazo. Juega tú a ser hoja y yo a ser rocío, y en tus brazos locos tenme suspendido. Madrecita mía, todito mi mundo, déjame decirte los cariños sumos.'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: (){ },
            ),
            TextButton(
              child: Text('Ok'),
              onPressed: (){ },
            ),
          ],
        )
      ],
    ),
  );
}


Widget _cardTipo2() {

  final card = Container(
   // clipBehavior: Clip.antiAlias,
    child: Column(
      children: <Widget> [

        FadeInImage(
           image: NetworkImage('https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Ftimes%2Fprod%2Fweb%2Fbin%2Fec8d1c9a-2b43-11eb-b054-8dc1447a1be1.jpg?crop=3980%2C2653%2C5%2C242'),
           placeholder: AssetImage('assets/jar-loading.gif'), 
           fadeInDuration: Duration( milliseconds: 200 ),
           height: 250.0,
           fit: BoxFit.cover,
           ),

        // Image(
        //   image: NetworkImage('https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Ftimes%2Fprod%2Fweb%2Fbin%2Fec8d1c9a-2b43-11eb-b054-8dc1447a1be1.jpg?crop=3980%2C2653%2C5%2C242'),
        //   ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner')
            )
      ],
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
          offset: Offset(2.0, 10.0) 

        )
      ]
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: card,
    ),
  );

}

}


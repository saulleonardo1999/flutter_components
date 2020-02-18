import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          _cardT1(),
          SizedBox(height: 30.0),
          _cardT2(),
          _cardT1(),
          SizedBox(height: 30.0),
          _cardT2(),
          _cardT1(),
          SizedBox(height: 30.0),
          _cardT2(),
          _cardT1(),
          SizedBox(height: 30.0),
          _cardT2(),
          _cardT1(),
          SizedBox(height: 30.0),
          _cardT2(),
          _cardT1(),
          SizedBox(height: 30.0),
          _cardT2(),
          _cardT1(),
          SizedBox(height: 30.0),
          _cardT2(),
          _cardT1(),
          SizedBox(height: 30.0),
          _cardT2(),
          _cardT1(),
          SizedBox(height: 30.0),
          _cardT2(),
          _cardT1(),
          SizedBox(height: 30.0),
          _cardT2(),
          _cardT1(),
          SizedBox(height: 30.0),
          _cardT2(),_cardT1(),
          SizedBox(height: 30.0),
          _cardT2(),

        ],
      ),
    );
  }

  Widget _cardT1 (){
    return Card(
      elevation: 20.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon (Icons.photo_album, color: Colors.cyan),
            title: Text("I'm the title of my 1st card"),
            subtitle: Text("This is a description about mi first component - Card"),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                  onPressed: (){},
                  child: Text("CANCEL"),
              ),
              FlatButton(
                onPressed: (){},
                child: Text("OK"),
              ),
            ]
          )
        ]
      ),
    );
  }
  Widget _cardT2 (){
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://images3.alphacoders.com/997/thumb-1920-997848.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration (milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
         /* Image(
            image: NetworkImage('https://images3.alphacoders.com/997/thumb-1920-997848.jpg'),
          ),*/
          Container(
            padding: EdgeInsets.all(10.0),
              child: Text('This Image is surreal'),
          ),
        ]
      )
    );


    return Container (

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
        child:card,
      ),
    );
  }
}

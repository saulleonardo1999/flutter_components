import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget{

  final options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text ('Components Temp'),
      ),
      body: ListView(
//        children: _createItems(),
      children: _createItemsShort(),
      ),
    );
  }

  List<Widget> _createItems(){
    List<Widget> list = new List<Widget>();
    for(var opt in options){
      final tempWidget = ListTile (
        title: Text (opt),
      );
      list..add(tempWidget)
          ..add(Divider());

    }
    return list;
  }
  List<Widget> _createItemsShort(){
    return options.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + "!"),
            subtitle: Text('Anything'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap:(){} ,
          ),
          Divider(),
        ],
      );

    }).toList();


  }
}
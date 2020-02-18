import 'package:components/src/pages/providers/menu_providers.dart';
import 'package:flutter/material.dart';
import 'package:components/src/pages/utils/icono_string_util.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Components"),
      ),
      body: _list(),
    );
  }

  Widget _list(){

    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ){
        return ListView(
          children: _itemsList(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _itemsList(List<dynamic> data, BuildContext context){
    final List<Widget> options = [];

    data.forEach((opt){
      final widgetTemp = ListTile(
        title: Text(opt['text']),
        leading: getIcon(opt['icon']),
        trailing: Icon( Icons.keyboard_arrow_right, color: Colors.blueAccent),
        onTap: (){
          Navigator.pushNamed(context, opt['route']);
        },
      );
      options..add(widgetTemp)
             ..add(Divider(color: Colors.cyan,));
    });

    return options;
  }
}
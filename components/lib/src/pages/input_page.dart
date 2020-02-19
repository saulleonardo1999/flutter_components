import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name  = '';
  String _email = '';
  String _date  = '';
  String _selectedOption = 'fly';
  List<String> _powers = ['fly', 'x-ray', 'super-strenght', 'superspeed'];


  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Inputs"),
      ),
      body:ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _createInput(),
          Divider(),
          _createEmail(),
          Divider(),
          _createPassword(),
          Divider(),
          _createDate(context),
          Divider(),
          _createDropdown(),
          Divider(),
          _createPerson(),
        ],
      ),
    );
  }


  Widget _createInput(){
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        counter: Text("Letters ${_name.length}"),
        hintText: 'Name of person',
        labelText: 'Name',
        helperText: 'Just is the name',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_box)
      ),
        onChanged: (value){
        setState((){
          _name = value;
        });


        },
    );
  }


  Widget _createEmail(){
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Email',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)
      ),
      onChanged: (value){
        setState((){
          _email = value;
        });


      },
    );
  }


  Widget _createPassword(){
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Password',
          labelText: 'Password',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock)
      ),
      onChanged: (value){
        setState((){
          _email = value;
        });


      },
    );
  }

  _selectDate(BuildContext context) async{
    DateTime picked = await showDatePicker(
        context     : context,
        initialDate : new DateTime.now(),
        firstDate   : new DateTime(2018),
        lastDate    : new DateTime(2025),
        locale      : Locale('es', 'ES')
    );

    if ( picked != null){
      setState ((){
          _date = picked.toString();
          _inputFieldDateController.text = _date;
      });
    }

  }
  Widget _createDate(BuildContext context){
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Birth Date',
          labelText: 'Birth Date',
          suffixIcon: Icon(Icons.perm_contact_calendar),
          icon: Icon(Icons.calendar_today),
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }



  List <DropdownMenuItem<String>> getDropdownOptions(){
    List<DropdownMenuItem<String>> myList = new List();

    _powers.forEach((power){
      myList.add (DropdownMenuItem(
        value: power ,
        child: Text(power),

      ));
    });
    return myList;
  }

  _createDropdown(){

    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0),
          Expanded(
              child: DropdownButton(
                value: _selectedOption,
                items: getDropdownOptions(),
                onChanged: (opt){
                  setState((){
                    _selectedOption = opt;
                  });
                },
              ),
          )

      ],
    );
  }


  Widget _createPerson (){

    return ListTile(
      title: Text ("The Name is: $_name"),
      subtitle: Text("Email: $_email"),
      trailing: Text (_selectedOption),
    );
  }
}

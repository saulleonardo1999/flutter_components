import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  bool _blockCheck = false;
  double _sliderValue = 400.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _createCheckbox(),
            _createSwitch(),
            Expanded(
                child: _createImage()
            ),
          ],
        ),
      )
    );
  }


  Widget _createCheckbox(){
//    return Checkbox(
//      value: _blockCheck,
//      onChanged: (_blockCheck) ? null : (value){
//        setState(() {
//          _blockCheck = value;
//        });
//      },
//    );



    return CheckboxListTile(
      title: Text('Block Slider'),
      value: _blockCheck,
      onChanged:(value){
        setState(() {
          _blockCheck = value;
        });
      },
    );
  }

  Widget _createSwitch(){
    return SwitchListTile(
      title: Text('Block Slider'),
      value: _blockCheck,
      onChanged:(value){
        setState(() {
          _blockCheck = value;
        });
      },
    );
  }




  Widget _createSlider(){
    return Slider(
      activeColor: Colors.indigo,
      label: 'Image Size',
      divisions: 20,
      value: _sliderValue,
      min: 10.0,
      max: 400.0,
      onChanged: (_blockCheck) ? null : ( value){
        setState(() {
          _sliderValue = value;
        });

      },
    );
  }


  Widget _createImage(){
    return FadeInImage(
      image: NetworkImage('https://www.stickpng.com/assets/images/580b57fbd9996e24bc43c022.png'),
      width: _sliderValue,
      fit: BoxFit.contain,
      placeholder: AssetImage('assets/jar-loading.gif') ,
      fadeInDuration: Duration(milliseconds: 200),
    );
  }

}

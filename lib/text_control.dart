import 'package:flutter/material.dart';
import './text.dart';

class TextControl extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => _TextControlState();
  
}

class _TextControlState extends State<TextControl> {

  String _text = "Hello";
  
  void _changeText(){
    setState(() {
      _text = "Text Changed";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          child: Column(children: <Widget>[
            TextWidget(_text),
            RaisedButton(
              onPressed: _changeText,
              child: Text('Change Text'),
              color: Colors.blue,
              textColor: Colors.white,
            ),
          ]),
        );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.pop(context),
      child: Column(
        children: <Widget>[
        Icon(CupertinoIcons.clear, color: Colors.green, size: 50.0),
      ],),
    );
  }
}
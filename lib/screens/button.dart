import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: IconButton(
        alignment: Alignment.topRight,
        iconSize: 50,
        icon: Icon(CupertinoIcons.clear),
        color: Colors.black,
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
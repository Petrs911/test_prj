import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Align(
          alignment: Alignment.topRight,
          child: IconButton(
            iconSize: 50,
            icon: Icon(CupertinoIcons.clear),
            color: Colors.black,
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
    );
  }
}
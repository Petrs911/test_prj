import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Align(
          alignment: Alignment.topRight,
          child: IconButton(
            iconSize: 30,
            icon: Icon(CupertinoIcons.clear, size: 80.0),
            color: Colors.black,
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
    );
  }
}
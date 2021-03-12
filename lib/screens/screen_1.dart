import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'button.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      decoration: BoxDecoration(color: Colors.black),
      child: Container(
        margin: EdgeInsets.all(16.0),
        height: 200.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Text('First Screen', textScaleFactor: 4.0),
      ),
    );
  }
}

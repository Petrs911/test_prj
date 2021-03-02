import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:test_prj/providers/horizontal_items.dart';


class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: FlatButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(Icons.favorite, color: Colors.pink, size: 24.0),
      )
    );
  }
}


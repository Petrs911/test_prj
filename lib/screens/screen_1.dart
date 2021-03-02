import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:test_prj/providers/horizontal_items.dart';


class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          IconButton(
            icon: Icon(Icons.clear, size: 30.0),
            onPressed: () => Navigator.pop(context),
          ),
        ), 
      ) 
    );
  }
}


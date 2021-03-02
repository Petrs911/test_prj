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
        child: Ink(
            child: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () => Navigator.pop(context),
          ),
        )
      ) 
    );
  }
}


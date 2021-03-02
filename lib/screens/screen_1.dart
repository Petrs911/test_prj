import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_prj/providers/horizontal_items.dart';


class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Align(
          alignment: Alignment.topRight,
          child: IconButton(
            icon: Icon(CupertinoIcons.clear),
            color: Colors.black,
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
    );
  }
}


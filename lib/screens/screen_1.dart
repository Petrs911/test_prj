import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:test_prj/providers/horizontal_items.dart';


class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoButton(
          borderRadius:BorderRadius.all(Radius.circular(8.0)),
          color: Colors.purple,
          child: Text("TEST BUTTON", style: TextStyle(color: Colors.white)),
          onPressed: () {},
        )
      )
    );
  }
}


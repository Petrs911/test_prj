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
      body: Container(
        width: 48.0,
        height: 48.0,
        child: Center(
          child: ElevatedButton(
            child: Text("TEST BUTTON"),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: Size(20.0, 40.0),
              primary: Colors.pink,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
            )),
          )
        )
      )
    );
  }
}


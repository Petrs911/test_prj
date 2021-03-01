import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:test_prj/providers/horizontal_items.dart';

import 'screen_0';


class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Go back'),
        )
      )
    );
  }
}


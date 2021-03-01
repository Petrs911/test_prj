import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

import 'providers/horizontal_items.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
      return HorizontalItemsProvider();
    } 

    );
  }
}

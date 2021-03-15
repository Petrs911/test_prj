import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/horizontal_items.dart';
import '../providers/vertical_items.dart';
import 'build_lists/horizontal_list_view_builder.dart';
import 'build_lists/vertical_list_view_builder.dart';
import 'button.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key key}) : super(key: key);

  static const routeName = '/screen_2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: ButtonWidget(),
          ),
          Expanded(
            child: HorizontalListView(),
          ),
          Expanded(
            flex: 2,
            child: VerticalListView(),
          ),
        ],
      ),
    );
  }
}

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
        children: <Widget> [
          Align(
            alignment: Alignment.topRight,
            child: ButtonWidget(),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Text('Section 1'),
          ),
          Expanded(
            child: HorizontalListView(),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Text('Section 2'),
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





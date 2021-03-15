import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/horizontal_items.dart';
import 'text_widget.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var item = context.watch<HorizontalItemsProvider>();
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Text(
          'Section 1 (${item.itemsCount})',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: item.itemsCount - 1,
          itemBuilder: (context, index) => TextWidget(
            text: item.itemAt(index),
            height: 150.0,
            weight: 330.0,
          ),
        ),
      ),
    ]);
  }
}

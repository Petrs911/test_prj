import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/vertical_items.dart';
import 'text_widget.dart';

class VerticalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var item = context.watch<VerticalItemsProvider>();
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            'Section 2 (${item.itemsCount})',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
        ListView.builder(
          itemCount: item.itemsCount - 1,
          itemBuilder: (context, index) => TextWidget(
            text: item.itemAt(index),
            height: 150.0,
            weight: 380.0,
          ),
        ),
      ],
    );
  }
}

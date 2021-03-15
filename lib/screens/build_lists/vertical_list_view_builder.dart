import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/vertical_items.dart';
import 'text_widget.dart';

class VerticalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var item = context.watch<VerticalItemsProvider>();
    return ListView.builder(
      //itemCount: item.itemsCount - 1,
      itemCount: 10,
      itemBuilder: (context, index) => TextWidget(
        //text: item.itemAt(index),
        text: 'Item1 $index',
        height: 150.0,
        weight: 380.0,
      ),
    );
  }
}

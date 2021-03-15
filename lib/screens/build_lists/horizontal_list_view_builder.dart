import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/horizontal_items.dart';
import 'text_widget.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var item = context.watch<HorizontalItemsProvider>();
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: item.itemsCount - 1,
      itemBuilder: (context, index) => TextWidget(
        text: item.itemAt(index),
        height: 150.0,
        weight: 380.0,
      ),
    );
  }
}

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import '../providers/base_items_provider.dart';
import '../providers/horizontal_items.dart';
import '../providers/vertical_items.dart';
import 'button.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key key}) : super(key: key);

  static const routeName = '/screen_2';
  @override
  Widget build(BuildContext context) => ListWidget();
}

class ListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var verticalItems = VerticalItemsProvider();
    verticalItems._reloadItems();
    var verticalList = verticalItems._items;

    var horizontalItems = HorizontalItemsProvider();
    horizontalItems._reloadItems();
    var horizontalList = horizontalItems._items;
    
    return ListView.builder(
      itemCount: horizontalList.length, 
      itemBuilder: (context, index) {
        return TextWidget(text: horizontalList[index]);
      }
    );
  }
}

class TextWidget extends StatelessWidget {
  TextWidget({Key key, this.text}) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1.0)),
      child: Text(text),
    );
  }
}

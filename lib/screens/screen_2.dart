import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import '../providers/horizontal_items.dart';
import '../providers/vertical_items.dart';
import 'button.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key key}) : super(key: key);

  static const routeName = '/screen_2';
  @override
  Widget build(BuildContext context) => _ItemList();
}

class _ItemsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var item = VerticalItemsProvider();
    return Scaffold(
      body: ListView.builder(
        itemCount: item.itemsCount,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              item.itemAt(index),
            ),
          );          
        }
      )
    );
  }
}


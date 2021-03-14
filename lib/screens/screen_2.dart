import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/horizontal_items.dart';
import '../providers/vertical_items.dart';
import 'button.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key key}) : super(key: key);

  static const routeName = '/screen_2';
  @override
  Widget build(BuildContext context) => _ItemsList();
}

class _ItemsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var item = context.watch<VerticalItemsProvider>();
    return Scaffold(
      body: ListView.builder(
        itemCount: item.itemsCount - 1,
        itemBuilder: (context, index) {
          return TextWidget(
              text: item.itemAt(index),
            );
          ),          
        }
      )
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({Key key, this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1.0)),
      child: Text(
        text,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}


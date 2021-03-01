import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:test_prj/providers/base_items_provider.dart';

class HorizontalItemsProvider extends BaseItemsProvider {
  @override
  String generateItemAt(int index) => 'Horizontal item $index';

  @override
  Duration get delayBeforeStartUpdate => const Duration(seconds: 5);
}


class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  Widget build(BuildContext context) {
    var f = HorizontalItemsProvider();
    String _text = f.generateItemAt(1);
    
    return Container(
      child: Center(
        child: Text(_text),
      )
    );
  }
}

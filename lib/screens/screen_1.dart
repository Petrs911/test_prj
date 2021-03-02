import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'button.dart';


class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  Widget build(BuildContext context) {
    /*return Scaffold(
      body: Center(
          child: ElevatedButton(
            child: Text("TEST BUTTON",
            style: TextStyle(fontSize: 16.5)),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: Size(140.0, 50.0),
              primary: Color(0xFFDB00FF),
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
            )),
          )
        )
    );*/

     return  Center(
          child: Container(
            child: ButtonWidget(),
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(3.0),
            height: 581.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
          )
    );
  }
}


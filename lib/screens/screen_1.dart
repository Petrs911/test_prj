import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'button.dart';
import 'text.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);

  static const routeName = '/screen_1';
  final ScrollController _controller;
  @override
  Widget build(BuildContext context) {
    _controller = ScrollController();

    return Center(
      child: Container(
        margin: EdgeInsets.all(16.0),
        width: double.infinity,
        height: 580.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(width: 50.0),
                Text(
                  "Title",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                ButtonWidget(),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(shortText, style: TextStyle(fontSize: 14.0, color: Colors.black)),
            ),
            Container(
                height: 360.0,
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                decoration: BoxDecoration(
                  color: Color(0xFFE5E5E5),
                ),
                child: CupertinoScrollbar(
                  isAlwaysShown: true,
                  controller: _controller,
                  child: SingleChildScrollView(
                    controller: _controller,
                    child: Text(
                      longText,
                      style: TextStyle(fontSize: 14.0, color: Colors.black),
                    ),
                  ),
                )),
            Center(
              child: ElevatedButton(
                child: Text("TEST BUTTON", style: TextStyle(fontSize: 14.0)),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(140.0, 50.0),
                  primary: Color(0xFFDB00FF),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

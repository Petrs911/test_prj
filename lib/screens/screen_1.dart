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
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              //mainAxisSize: MainAxisSize.min,
              children: <Widget> [
                Align(
                  alignment: Alignment.topRight,
                  child: ButtonWidget(),),
                Text('Title', style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
                Container(
                  margin: EdgeInsets.all(16.0),
                  child: Text("This widget will be as big as possible if its dimensions are constrained and widthFactor and heightFactor are null. If a dimension is unconstrained and the corresponding size",
                    style: TextStyle(fontSize: 14.0, color: Colors.black))),
                Container(
                  padding: EdgeInsets.all(16.0),
                  margin: EdgeInsets.bottom(10.0),
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Expanded(
                    child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text("A box in which a single widget can be scrolled. This widget is useful when you have a single box that will normally be entirely visible, for example a clock face in a time picker, but you need to make sure it can be scrolled if the container gets too small in one axis (the scroll direction). It is also useful if you need to shrink-wrap in both axes (the main scrolling direction as well as the cross axis), as one might see in a dialog or pop-up menu. In that case, you might pair the [SingleChildScrollView] with a [ListBody] child. When you have a list of children and do not require cross-axis shrink-wrapping",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                ),
                ),
                Center(
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
                ),
              ]
            ),
            margin: EdgeInsets.all(16.0),
            //padding: EdgeInsets.all(3.0),
            height: 581.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
          )
    );
  }
}


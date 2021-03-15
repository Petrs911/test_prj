import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key key, this.text, this.height, this.weight}) : super(key: key);

  final String text;
  final double height;
  final double weight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: weight,
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0, top: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}

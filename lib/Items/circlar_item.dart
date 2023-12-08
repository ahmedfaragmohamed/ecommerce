import 'package:flutter/material.dart';

class CirclarItem extends StatelessWidget {
  final int color;
  final String text;

  CirclarItem({ required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 26,
        backgroundColor: Color(0xffEBF0FF),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Color(color),
          child: Center(
            child: Text(this.text),
          ),
        ),
      ),
    );


  }
}
class DataCirclarItem {
  final String color;
  DataCirclarItem({ required this.color});

}


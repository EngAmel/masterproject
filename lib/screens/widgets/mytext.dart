import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String txt;
  final Color mycolor;
  final FontWeight weight;
  final double mysize;

  const MyText(
      {Key? key,
      required this.txt,
      this.mycolor = Colors.black,
      this.weight = FontWeight.bold,
      this.mysize = 16.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(fontWeight: weight, color: mycolor, fontSize: mysize),
      textAlign: TextAlign.right,
    );
  }
}

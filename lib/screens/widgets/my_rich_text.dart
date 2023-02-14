import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';

class MyRischText extends StatelessWidget {
  final String maintext;
  final String suptext;
  const MyRischText({Key? key, required this.maintext, required this.suptext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: maintext,
            style: const TextStyle(fontSize: 20, color: themeColorDarkest),
            children: [
          TextSpan(
              text: suptext,
              style: const TextStyle(fontSize: 14.0, color: Colors.black87))
        ]));
  }
}

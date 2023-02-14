// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';

// ignore: camel_case_types
enum gender { male, female }

// ignore: must_be_immutable
class MyRadio extends StatelessWidget {
  String title;
  Duration value;
  Duration? duration;
  Function(Duration?)? onchanged;
  MyRadio({
    Key? key,
    required this.title,
    required this.value,
    required this.duration,
    required this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile(
          value: value,
          contentPadding: const EdgeInsets.all(0.0),
          title: Text(title),
          dense: true,
          tileColor: themeColorDark,
          groupValue: duration,
          onChanged: onchanged),
    );
  }
}

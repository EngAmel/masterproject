import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:request/constans/colors.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController? myController;
  final String? fiedName;
  final IconData? myIcon;
  final Color prefixIconColor;
  final int maxlin;
  final double wdth;

  const MyTextField(
      {Key? key,
      this.fiedName,
      this.myController,
      this.myIcon,
      this.prefixIconColor = themeColorDarkest,
      this.maxlin = 1,
      this.wdth = 400.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: wdth,
      child: TextFormField(
        maxLines: maxlin,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Enter some text";
          } else {
            null;
          }
        },
        controller: myController,
        decoration: InputDecoration(
            labelText: fiedName,
            prefixIcon: Icon(
              myIcon,
              color: prefixIconColor,
            ),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: themeColorDark),
            ),
            labelStyle: const TextStyle(color: Colors.black38)),
      ),
    );
  }
}

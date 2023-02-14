import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';

class CostumButton extends StatelessWidget {
  final String lable;
  final bool disabled;
  final EdgeInsets? padding;
  final VoidCallback onPressed;

  const CostumButton(
      {Key? key,
      required this.lable,
      this.disabled = false,
      this.padding,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: disabled ? null : onPressed,
      style: TextButton.styleFrom(
          padding: padding ?? const EdgeInsets.symmetric(vertical: 20),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          backgroundColor: disabled ? Colors.black12 : themeColorDarkest),
      child: Text(
        lable,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

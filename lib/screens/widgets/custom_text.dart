import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';

class CustomTextField extends StatelessWidget {
  final String? placeholder;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool hidetext;
  final TextEditingController? controller;
  final bool valid;
  final String? errorText;

  const CustomTextField(
      {Key? key,
      this.placeholder,
      this.prefixIcon,
      this.suffixIcon,
      this.hidetext = false,
      this.controller,
      this.valid = true,
      this.errorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: hidetext,
      decoration: InputDecoration(
          errorText: valid ? null : errorText,
          suffixIcon: suffixIcon,
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: errorThemecolor),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: errorThemecolor),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: themeColorDarkest),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: themeColorDarkest, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          hintText: placeholder,
          prefixIcon: prefixIcon),
    );
  }
}

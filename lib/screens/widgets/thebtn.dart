import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';

class MyBtn extends StatelessWidget {
  final BoxShape myshape;
  final Widget mychild;
  final double myheight;
  final double mywidth;
  final VoidCallback onPress;
  final double padd;
  final Color backgroundClr;
  const MyBtn(
      {Key? key,
      required this.onPress,
      this.mychild = const Text("SUBMit"),
      this.myshape = BoxShape.rectangle,
      this.myheight = 50,
      this.mywidth = 200,
      this.padd = 30.0,
      this.backgroundClr = themeColorDarkest})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(top: padd),
      decoration: BoxDecoration(shape: myshape),
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            fixedSize: Size(mywidth, myheight),
            backgroundColor: backgroundClr,
            foregroundColor: Colors.white,
            // shadowColor: Colors.black45
          ),
          onPressed: onPress,
          child: mychild),
    );
    ;
  }
}

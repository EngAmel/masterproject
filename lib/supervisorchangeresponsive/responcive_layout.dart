import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResponciveLayout extends StatelessWidget {
  final Widget desktopScaffold;
  final Widget mopailScaffold;
  final Widget tapletScaffold;

  const ResponciveLayout(
      {Key? key,
      required this.desktopScaffold,
      required this.mopailScaffold,
      required this.tapletScaffold})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mopailScaffold;
        } else if (constraints.maxWidth < 1100) {
          return tapletScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}

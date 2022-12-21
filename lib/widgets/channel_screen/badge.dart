import 'package:flutter/material.dart';

import '../../constants.dart';

class Badge extends StatelessWidget {
  final String text;
  final Color color, fontColor;
  final double width;

  const Badge(
      {Key? key,
      required this.text,
      required this.color,
      this.fontColor = Palette.kTextColor,
      this.width = 60.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 22,
      decoration: BoxDecoration(
        color: color,
        borderRadius:
            BorderRadius.all(Radius.circular(Palette.kBorderRadius / 2)),
      ),
      alignment: Alignment.center,
      child: Text(text,
          style: Theme.of(context).textTheme.headline6!.copyWith(
              fontSize: 10, color: fontColor, fontWeight: FontWeight.bold)),
    );
  }
}

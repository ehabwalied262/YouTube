import 'package:flutter/material.dart';

import '../../constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.text,
    this.color = Palette.kPrimaryColor,
    required this.tap,
    required this.widthFactor,
    this.border,
    this.fontSize = 16,
    this.colorText = Palette.kTextColor,
  }) : super(key: key);

  final String text;
  final Function() tap;
  final double widthFactor;
  final BoxBorder? border;
  final Color color;
  final Color colorText;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: tap,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: size.width * widthFactor,
            decoration: BoxDecoration(
                border: border,
                borderRadius: BorderRadius.circular(10),
                color: color),
            padding: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: colorText, fontSize: fontSize),
            ),
          ),
        )
      ],
    );
  }
}

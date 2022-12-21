
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../constants.dart';
import '../widgets.dart';

class WatchedColumn extends StatelessWidget {
  const WatchedColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularPercentIndicator(
          radius: 25.0,
          animation: true,
          animationDuration: 1200,
          lineWidth: 3.0,
          percent: 0.6,
          center: Text(
            "60 %",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          circularStrokeCap: CircularStrokeCap.round,
          backgroundColor: Palette.kTintGrey,
          progressColor: Palette.kAccentColor,
        ),
        const SizedBox(
          height: 10,
        ),
        Badge(
            text: 'Watched',
            fontColor: Palette.kBlackColor,
            color: Palette.kAccentColor)
      ],
    );
  }
}

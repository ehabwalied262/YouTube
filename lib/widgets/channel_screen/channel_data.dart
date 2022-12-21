import 'package:flutter/material.dart';
import 'package:yt_meter/models/models.dart';

import '../../assets.dart';
import '../../constants.dart';
import '../widgets.dart';

class ChannelData extends StatelessWidget {
  const ChannelData({
    Key? key,
    required this.channel,
  }) : super(key: key);

  final Channel channel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          channel.title,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: Image.asset(
                Assets.mediaLibrary,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                '${channel.videosCount} videos',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Palette.kGreyColor),
              ),
            ),
          ],
        ),
        Badge(text: channel.subText, color: Palette.kPrimaryColor)
      ],
    );
  }
}

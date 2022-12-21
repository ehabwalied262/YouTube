import 'package:flutter/material.dart';
import 'package:yt_meter/models/models.dart';

import '../../constants.dart';

class ChannelCover extends StatelessWidget {
  final String subText, title, avatar;
  final Channel channel;
  const ChannelCover(
      {Key? key,
      required this.subText,
      required this.title,
      required this.avatar,
      required this.channel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/channelScreen', arguments: channel);
          },
          borderRadius: BorderRadius.circular(Palette.kBorderRadius / 2),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: size.width / 2.5,
                    height: size.height / 5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(avatar)),
                      borderRadius: const BorderRadius.all(
                          Radius.circular(Palette.kBorderRadius)),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 10,
                    child: Container(
                      width: 60,
                      height: 22,
                      decoration: const BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.all(
                            Radius.circular(Palette.kBorderRadius / 2)),
                      ),
                      alignment: Alignment.center,
                      child: Text(subText,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  fontSize: 10,
                                  color: Palette.kTextColor,
                                  fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(title, style: Theme.of(context).textTheme.headline5),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
  }
}

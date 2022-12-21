import 'package:flutter/material.dart';
import 'package:yt_meter/models/models.dart';

import '../../constants.dart';
import '../widgets.dart';

class OverviewTab extends StatelessWidget {
  final Video video;

  const OverviewTab({
    Key? key,
    required this.video,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        InkWell(
          borderRadius:
              const BorderRadius.all(Radius.circular(Palette.kBorderRadius)),
          onTap: () {},
          child: Container(
            height: 90,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 7,
                offset: const Offset(0, 2),
              ),
            ]),
            child: Material(
                elevation: 20,
                color: Palette.kBlackColor,
                borderRadius: const BorderRadius.all(
                    Radius.circular(Palette.kBorderRadius)),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: size.height / 8,
                          width: size.width / 4,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(Palette.kBorderRadius)),
                              image: DecorationImage(
                                  image: AssetImage(video.thumbnail))),
                        ),
                        Positioned(
                            right: 5,
                            bottom: 5,
                            child: Badge(
                                width: 40,
                                text: '25:12',
                                color: Palette.kBlackColor)),
                        Positioned(
                            right: 15,
                            top: 5,
                            child: Badge(
                                text: 'Watched',
                                fontColor: Palette.kBlackColor,
                                color: Palette.kAccentColor)),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 15),
                        Text(
                          video.title,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Text(video.viewsCount,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: Palette.kGreyColor)),
                            Text(video.publishedAt,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: Palette.kGreyColor))
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                        constraints: const BoxConstraints(),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          size: 20,
                          color: Palette.kTextColor,
                        ))
                  ],
                )),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}

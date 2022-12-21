import 'package:flutter/material.dart';
import 'package:yt_meter/models/models.dart';
import 'package:yt_meter/widgets/widgets.dart';

import '../assets.dart';
import '../constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Image.asset(
                    Assets.logo,
                    width: size.width / 12,
                    height: size.height / 12,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'YouTube',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Palette.kClubhouse, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_active_outlined,
                          size: 24,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert_outlined,
                          size: 24,
                          color: Colors.white,
                        )),
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const SectionHeader(
                      text: 'Politics',
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: size.height / 4,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: channels.length,
                          itemBuilder: (context, index) {
                            Channel channel = channels[index];
                            return ChannelCover(
                              channel: channel,
                              avatar: channel.avatar,
                              title: channel.title,
                              subText: channel.subText,
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

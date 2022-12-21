import 'package:flutter/material.dart';
import 'package:yt_meter/models/models.dart';

import '../../constants.dart';
import '../widgets.dart';

class ChannelAppBar extends StatelessWidget {
  const ChannelAppBar(
      {Key? key, required TabController? controller, required this.channel})
      : _controller = controller,
        super(key: key);

  final TabController? _controller;
  final Channel channel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SliverAppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      expandedHeight: 200,
      floating: true,
      pinned: true,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              size: 20,
            ),
          ),
        )
      ],
      bottom: PreferredSize(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width / 4,
                          height: size.height / 8,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(channel.avatar)),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(Palette.kBorderRadius / 2)),
                          ),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 5,
                          child: Badge(
                            text: channel.category,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ChannelData(channel: channel),
                    const Spacer(),
                    WatchedColumn(),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: TabBar(
                    isScrollable: true,
                    labelColor: Palette.kTextColor,
                    indicatorColor: Palette.kTextColor,
                    controller: _controller,
                    tabs: const [
                      Tab(
                        text: 'Overview',
                      ),
                      Tab(
                        text: 'Playlists',
                      ),
                      Tab(
                        text: 'Extracted',
                      ),
                      Tab(
                        text: 'Similar Channels',
                      ),
                    ]),
              ),
            ],
          ),
          preferredSize: const Size.fromHeight(150)),
    );
  }
}

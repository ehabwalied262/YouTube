import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yt_meter/models/models.dart';
import 'package:yt_meter/widgets/widgets.dart';

class ChannelScreen extends StatefulWidget {
  const ChannelScreen({Key? key, required this.channel}) : super(key: key);

  @override
  State<ChannelScreen> createState() => _ChannelScreenState();
  final Channel channel;
}

class _ChannelScreenState extends State<ChannelScreen>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  int index = 0;

  void _tabListener() {
    setState(() {
      index = _controller!.index;
    });
  }

  @override
  void dispose() {
    _controller!.removeListener((_tabListener));
    _controller!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller = TabController(length: 4, vsync: this);
    _controller!.addListener((_tabListener));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          body: NestedScrollView(
              body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: TabBarView(controller: _controller, children: const [
                  ListOverviewTab(),
                  ListOverviewTab(),
                  ListOverviewTab(),
                  ListOverviewTab(),
                ]),
              ),
              headerSliverBuilder: (context, value) {
                return [
                  ChannelAppBar(
                    controller: _controller,
                    channel: widget.channel,
                  ),
                ];
              }),
        ),
      ),
    );
  }
}

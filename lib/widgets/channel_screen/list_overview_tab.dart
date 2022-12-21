import 'package:flutter/material.dart';
import 'package:yt_meter/models/models.dart';

import '../widgets.dart';

class ListOverviewTab extends StatelessWidget {
  const ListOverviewTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        Video video = videos[index];
        return OverviewTab(
          video: video,
        );
      },
    );
  }
}

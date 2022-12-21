import '../assets.dart';

class Channel {
  final String avatar, title, subText, category;
  final int videosCount;

  Channel(
      this.avatar, this.title, this.subText, this.videosCount, this.category);
}

List<Channel> channels = [
  Channel(Assets.channel1, 'Lets talk politics', 'Egypt', 128, 'Politics'),
  Channel(Assets.channel2, 'Vox', 'USA', 128, 'Politics'),
  Channel(Assets.channel3, 'Jonny Harris', 'Economy', 92, 'Politics'),
  Channel(Assets.channel4, 'Lets talk politics', 'Global', 65, 'Politics'),
  Channel(Assets.channel5, 'Lets talk politics', 'Egypt', 20, 'Politics'),
  Channel(Assets.channel6, 'Lets talk politics', 'Egypt', 35, 'Politics'),
  Channel(Assets.channel7, 'Lets talk politics', 'Egypt', 40, 'Politics'),
  Channel(Assets.channel1, 'Lets talk politics', 'Egypt', 30, 'Politics'),
  Channel(Assets.channel2, 'Lets talk politics', 'Egypt', 80, 'Politics'),
];

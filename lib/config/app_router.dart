import 'package:flutter/material.dart';
import 'package:yt_meter/models/channel.dart';
import 'package:yt_meter/screens/screens.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ScreensName.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case ScreensName.addChannelScreen:
        return MaterialPageRoute(builder: (_) => const AddChannelScreen());

      case ScreensName.categoryScreen:
        return MaterialPageRoute(builder: (_) => const CategoryScreen());

      case ScreensName.channelScreen:
        return MaterialPageRoute(
            builder: (_) => ChannelScreen(
                  channel: settings.arguments as Channel,
                ));

      case ScreensName.createCategoryScreen:
        return MaterialPageRoute(builder: (_) => const CreateCategoryScreen());

      case ScreensName.libraryScreen:
        return MaterialPageRoute(builder: (_) => const LibraryScreen());
    }
  }
}

class ScreensName {
  static const String homeScreen = '/';
  static const String addChannelScreen = '/addChannelScreen';
  static const String categoryScreen = '/categoryScreen';
  static const String channelScreen = '/channelScreen';
  static const String createCategoryScreen = '/createCategoryScreen';
  static const String libraryScreen = '/libraryScreen';
}

import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:yt_meter/constants.dart';
import 'package:yt_meter/screens/profile_screen.dart';
import 'package:yt_meter/screens/screens.dart';

import '../assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  int _selectedTab = 0;

  bool isFABActive = false;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  final List<IconData> menuItems = <IconData>[
    Icons.home,
    Icons.settings,
    Icons.menu
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (index) {
            setState(() {
              this._selectedTab = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_max_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  Assets.mediaLibrary,
                  width: 20,
                  height: 20,
                  color: _selectedTab == 1
                      ? Palette.kPrimaryColor
                      : Palette.kTextColor,
                ),
                label: 'Library'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

        //Init Floating Action Bubble
        floatingActionButton: FloatingActionBubble(
          // Menu items
          items: <Bubble>[
            // Floating action menu item
            Bubble(
              title: "Add a channel",
              iconColor: Colors.white,
              bubbleColor: Palette.kPrimaryColor,
              icon: Icons.video_library_rounded,
              titleStyle: TextStyle(fontSize: 14, color: Colors.white),
              onPress: () {
                Navigator.pushNamed(context, '/addChannelScreen');
                controller.reverse();
                isFABActive = !isFABActive;
              },
            ),
            // Floating action menu item
            Bubble(
              title: "Create a category",
              iconColor: Colors.white,
              bubbleColor: Palette.kPrimaryColor,
              icon: Icons.library_add_rounded,
              titleStyle: TextStyle(fontSize: 14, color: Colors.white),
              onPress: () {
                Navigator.pushNamed(context, '/createCategoryScreen');
                controller.reverse();
                isFABActive = !isFABActive;
              },
            ),
          ],

          // animation controller
          animation: controller,

          // On pressed change animation state
          onPress: () {
            controller.isCompleted
                ? controller.reverse()
                : controller.forward();
            setState(() {
              isFABActive = !isFABActive;
            });
          },

          // Floating Action button Icon color
          iconColor: Palette.kTextColor,

          // Flaoting Action button Icon
          iconData: isFABActive ? Icons.close : Icons.add,
          backGroundColor: Palette.kRed,
        ),
        body: SafeArea(
          child: Stack(
            children: [
              renderView(0, HomeView()),
              renderView(1, LibraryScreen()),
              renderView(2, ProfileScreen()),
            ],
          ),
        ));
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: _selectedTab != tabIndex,
      child: Opacity(
        opacity: _selectedTab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}

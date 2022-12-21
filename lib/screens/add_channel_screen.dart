import 'package:flutter/material.dart';

class AddChannelScreen extends StatelessWidget {
  const AddChannelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Add new channel',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}

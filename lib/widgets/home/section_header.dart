import 'package:flutter/material.dart';

import '../../constants.dart';

class SectionHeader extends StatelessWidget {
  final String text;
  const SectionHeader({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(text,
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(
          width: 10,
        ),
        IconButton(
          constraints: const BoxConstraints(),
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: const Icon(
            Icons.edit,
            color: Palette.kTextColor,
            size: 20,
          ),
        ),
        const Spacer(),
        InkWell(
          borderRadius: BorderRadius.circular(Palette.kBorderRadius / 2),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Text('See more',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Palette.kGreyColor)),
          ),
        )
      ],
    );
  }
}

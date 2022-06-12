import 'package:ckaserer/models/buttons/social_media_button_model.dart';
import 'package:ckaserer/widgets/icon_button.dart';
import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  final List<MySocialMediaButtonModel> socialMediaItems;
  final double height;

  const SocialMediaRow({
    Key? key,
    required this.socialMediaItems,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for (MySocialMediaButtonModel item in socialMediaItems) {
      children.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MyIconButton(
            key,
            icon: item.icon,
            onPressed: item.onPressed,
            size: height,
          ),
        ),
      );
    }
    return Row(
      children: children,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hoverover/hoverover.dart';
import 'package:sizer/sizer.dart';
import 'package:web_menu/const/color_const.dart';

class SocialMediaIcon extends StatelessWidget {
  SocialMediaIcon({
    super.key,
    required this.icon,
  });
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return HoverOver(builder: (isHovering) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: CircleAvatar(
            radius: 18,
            backgroundColor: !isHovering ? colorPrimary : colorWhite,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  icon,
                  size: 18,
                  color: isHovering ? colorPrimary : colorWhite,
                ))),
      );
    });
  }
}

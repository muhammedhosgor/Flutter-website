import 'package:flutter/material.dart';
import 'package:hoverover/hoverover.dart';
import 'package:sizer/sizer.dart';
import 'package:web_menu/const/color_const.dart';

class PageInfoIcon extends StatelessWidget {
  PageInfoIcon({
    super.key,
    required this.icon,
    this.text = "",
  });
  IconData? icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return HoverOver(builder: (isHovering) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            CircleAvatar(
                radius: 18,
                backgroundColor: !isHovering ? colorPrimary : colorWhite,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      icon,
                      size: 18,
                      color: isHovering ? colorPrimary : colorWhite,
                    ))),
            SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: TextStyle(color: colorWhite, fontSize: 12),
            ),
          ],
        ),
      );
    });
  }
}

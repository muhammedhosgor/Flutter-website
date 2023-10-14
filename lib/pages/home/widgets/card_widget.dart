import 'package:flutter/material.dart';
import 'package:hoverover/hoverover.dart';
import 'package:web_menu/const/color_const.dart';

class CardWidgtes extends StatelessWidget {
  CardWidgtes({
    super.key,
    this.icon,
    this.title,
    this.decription,
  });
  IconData? icon;
  String? title;
  String? decription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Card(
        borderOnForeground: true,
        color: colorBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            HoverOver(builder: (isHovering) {
              return CircleAvatar(
                radius: 30,
                backgroundColor: !isHovering ? colorPrimary : colorWhite,
                child: Icon(
                  icon,
                  color: !isHovering ? colorWhite : colorPrimary,
                ),
              );
            }),
            SizedBox(
              height: 20,
            ),
            Text(
              title ?? "",
              style: TextStyle(color: colorPrimary),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                decription ?? "",
                style: TextStyle(color: colorPrimary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

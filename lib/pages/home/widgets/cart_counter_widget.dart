import 'package:avatar_glow/avatar_glow.dart';
import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:web_menu/const/color_const.dart';

class CardCounter extends StatelessWidget {
  const CardCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      AvatarGlow(
        endRadius: 75,
        glowColor: colorPrimary,
        child: CircleAvatar(
            backgroundColor: colorBg,
            radius: 50,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "+",
                  style: TextStyle(
                      color: colorWhite,
                      fontSize: 54,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  width: 10,
                ),
                Countup(
                  begin: 0,
                  end: 75,
                  duration: Duration(seconds: 3),
                  style: TextStyle(
                    fontSize: 36,
                  ),
                ),
              ],
            )),
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        " Yıllık Uzman Deneyimi",
        style: TextStyle(
            color: colorBg, fontWeight: FontWeight.w600, fontSize: 24),
      )
    ]);
  }
}

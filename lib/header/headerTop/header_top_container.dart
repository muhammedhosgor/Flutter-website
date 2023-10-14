import 'package:flutter/material.dart';
import 'package:web_menu/const/color_const.dart';
import 'package:web_menu/header/headerTop/mail_adress/mail_adress_icon_widget.dart';
import 'package:web_menu/header/headerTop/social_button/social_media_icon_widget.dart';

class headerTopContainer extends StatelessWidget {
  const headerTopContainer({
    super.key,
    required this.sw,
  });

  final double sw;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: sw,
      color: colorBg,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        //! Adres ve mail
        Expanded(
          flex: 4,
          child: Row(
            children: [
              PageInfoIcon(
                icon: Icons.pin_drop_rounded,
                text: 'Bahçeşehir Mah, Ardıç Sk. No:1000 Meram/Konya',
              ),
              PageInfoIcon(
                icon: Icons.phone,
                text: '+90 332 070 07 07',
              ),
            ],
          ),
        ),
        //! Sosyal medya ikonları
        Row(
          children: [
            SocialMediaIcon(
              icon: Icons.facebook,
            ),
            SocialMediaIcon(
              icon: Icons.wechat_sharp,
            ),
            SocialMediaIcon(
              icon: Icons.tiktok,
            ),
          ],
        ),
      ]),
    );
  }
}

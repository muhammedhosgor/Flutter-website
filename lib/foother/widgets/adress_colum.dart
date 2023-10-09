import 'package:flutter/material.dart';
import 'package:web_menu/const/color_const.dart';
import 'package:web_menu/header/headerTop/mail_adress/mail_adress_icon_widget.dart';

class AdressColumn extends StatelessWidget {
  const AdressColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('İletişim Adresimiz',
                style: TextStyle(
                  color: colorPrimary,
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          PageInfoIcon(
            icon: Icons.pin_drop_rounded,
            text: 'Musalla Bağları, Elmalı Cd. No:51, 42060 Selçuklu/Konya',
          ),
          SizedBox(
            height: 10,
          ),
          PageInfoIcon(
            icon: Icons.phone,
            text: '+90 332 070 07 07',
          ),
          SizedBox(
            height: 10,
          ),
          PageInfoIcon(
            icon: Icons.email,
            text: 'example@aaaaa.com',
          ),
        ],
      ),
    );
  }
}

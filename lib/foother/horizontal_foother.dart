import 'package:flutter/material.dart';
import 'package:galleryimage/galleryimage.dart';
import 'package:web_menu/const/color_const.dart';
import 'package:web_menu/foother/widgets/adress_colum.dart';
import 'package:web_menu/foother/widgets/foother_menu.dart';

class HorizantalFoother extends StatelessWidget {
  const HorizantalFoother({
    super.key,
    required this.sw,
  });

  final double sw;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorBg,
      width: sw,
      height: 270,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //!Colum1
          Divider(
            color: colorPrimary,
            thickness: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //! Adres ve mail

              AdressColumn(),

              FootherMenu(),

              Expanded(
                flex: 4,
                child: Image.asset(
                  "assets/logo/turkuaz.png",
                  fit: BoxFit.contain,
                  width: 100,
                  height: 100,
                ),
              ),
            ],
          ),
          //! Column2
        ],
      ),
    );
  }
}

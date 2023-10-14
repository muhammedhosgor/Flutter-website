import 'package:flutter/material.dart';
import 'package:web_menu/const/color_const.dart';
import 'package:web_menu/foother/widgets/adress_colum.dart';
import 'package:web_menu/foother/widgets/foother_menu.dart';

class VerticalFoother extends StatelessWidget {
  const VerticalFoother({
    super.key,
    required this.sw,
  });

  final double sw;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorBg,
      width: sw,
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //! Adres ve mail

          Flexible(flex: 2, child: AdressColumn()),

          Flexible(flex: 2, child: FootherMenu()),

          Flexible(
            flex: 2,
            child: Image.asset(
              "assets/logo/turkuaz.png",
              fit: BoxFit.contain,
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}

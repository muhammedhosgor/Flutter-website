import 'package:flutter/material.dart';
import 'package:web_menu/const/color_const.dart';

class FootherBottom extends StatelessWidget {
  const FootherBottom({
    super.key,
    required this.sw,
  });

  final double sw;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorPrimary,
      width: sw,
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Copyright 2023 Muhammed Hoşgör. Tüm Hakları Saklıdır.",
              style: TextStyle(
                  color: colorWhite, fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

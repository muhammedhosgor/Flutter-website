import 'package:flutter/material.dart';
import 'package:web_menu/const/color_const.dart';

class FootherMenu extends StatelessWidget {
  const FootherMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: colorPrimary,
                  size: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Anasayfa',
                    style: TextStyle(
                      color: colorWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: colorPrimary,
                  size: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sayfa 1',
                    style: TextStyle(
                      color: colorWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: colorPrimary,
                  size: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'İletişim',
                    style: TextStyle(
                      color: colorWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: colorPrimary,
                  size: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Hakkımızda',
                    style: TextStyle(
                      color: colorWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

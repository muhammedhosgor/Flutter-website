import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';
import 'package:web_menu/const/color_const.dart';

class NavMenuWidget extends StatelessWidget {
  const NavMenuWidget({
    super.key,
    required this.sw,
  });

  final double sw;

  @override
  Widget build(BuildContext context) {
    return AdaptiveNavBar(
      backgroundColor: colorWhite,
      foregroundColor: colorBg,
      // leading: CircleAvatar(
      //   backgroundColor: Colors.blue,
      //   radius: 45,
      //   child: const Icon(
      //     Icons.snowboarding,
      //     size: 45,
      //     color: colorWhite,
      //   ),
      // ),
      screenWidth: sw,
      title: const Text(""),
      navBarItems: [
        NavBarItem(
          text: "Anasayfa",
          onTap: () {
            Navigator.pushNamed(context, "routeName");
          },
        ),
        NavBarItem(
          text: "Sayfa1",
          onTap: () {
            Navigator.pushNamed(context, "routeName");
          },
        ),
        NavBarItem(
          text: "İletişim",
          onTap: () {
            Navigator.pushNamed(context, "routeName");
          },
        ),
        NavBarItem(
          text: "Hakkımızda",
          onTap: () {
            Navigator.pushNamed(context, "routeName");
          },
        ),
      ],
    );
  }
}

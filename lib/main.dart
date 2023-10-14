import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:hoverover/hoverover.dart';
import 'package:web_menu/const/color_const.dart';
import 'package:web_menu/footer/footer_bottom.dart';
import 'package:web_menu/footer/horizontal_footer.dart';
import 'package:web_menu/header/headerTop/header_top_container.dart';
import 'package:web_menu/header/nav_menu/nav_menu.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:flutter_image_slider/indicator/Circle.dart';
import 'package:countup/countup.dart';
import 'package:web_menu/pages/home/home_page.dart';

import 'pages/home/widgets/card_widget.dart';
import 'pages/home/widgets/cart_counter_widget.dart';
import 'pages/home/widgets/motto_container_widget.dart';

/// Entry point of the application
void main() {
  runApp(const MyApp());
}

/// Base structure of the app.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Template',
      home: HomePage(),
    );
  }
}

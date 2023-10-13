import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:hoverover/hoverover.dart';
import 'package:web_menu/const/color_const.dart';
import 'package:web_menu/foother/foother_bottom.dart';
import 'package:web_menu/foother/horizontal_foother.dart';
import 'package:web_menu/header/headerTop/header_top_container.dart';
import 'package:web_menu/header/nav_menu/nav_menu.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animate_do/animate_do.dart';

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
      title: 'Adaptive NavBar',
      home: HomePage(),
    );
  }
}

/// HomePage of the app.
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Screen Width of the device.
    final sw = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Visibility(
                visible: sw < 700 ? false : true,
                child: headerTopContainer(sw: sw)),
            NavMenuWidget(sw: sw),
            Stack(
              children: [
                Image.asset(
                  "assets/images/b1.jpg",
                  fit: BoxFit.cover,
                  width: sw,
                  height: sw / 2,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: FadeInLeft(
                        child: Text(
                          "Best Medics, Doctors",
                          style: TextStyle(
                              color: colorBg,
                              fontSize: 26,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: FadeInLeft(
                        child: Text("and physicians",
                            style: TextStyle(
                                color: colorWhite,
                                fontSize: 26,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: FadeInUp(
                        child: Text(
                            "Conveniently drive go forward architectures with future-proof growth. \nEnergistically supply low-risk high-yield process improvements for mission-critical testing procedures and visual mockups.",
                            style: TextStyle(
                                color: colorBg,
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: SizedBox(
                        width: 300,
                        height: 45,
                        child: FadeInDownBig(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: BorderSide(
                                              color: colorPrimary)))),
                              onPressed: () {},
                              child: Text('Button')),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 350.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Bobbers',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText('Medical & General Care!,',
                        textStyle: TextStyle(color: colorPrimary)),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: sw < 1320 ? true : false,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardWidgtes(
                      icon: Icons.settings_suggest_rounded,
                      title: 'Medical',
                      decription: 'Dolar sit amet asdsadasdsda ',
                    ),
                    CardWidgtes(
                      icon: Icons.accessibility_sharp,
                      title: 'Sağlık',
                      decription: 'Dolar sit amet asdsadsad',
                    ),
                    CardWidgtes(
                      icon: Icons.accessibility_sharp,
                      title: 'Sağlık',
                      decription: 'Dolar sit amet asdsadsad',
                    ),
                    CardWidgtes(
                      icon: Icons.accessibility_sharp,
                      title: 'Sağlık',
                      decription: 'Dolar sit amet asdsadsad',
                    ),
                  ]),
            ),
            Visibility(
              visible: sw > 1321 ? true : false,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardWidgtes(
                      icon: Icons.settings_suggest_rounded,
                      title: 'Medical',
                      decription: 'Dolar sit amet ssadsadsa sadasdad ',
                    ),
                    CardWidgtes(
                      icon: Icons.accessibility_sharp,
                      title: 'Sağlık',
                      decription: 'Dolar sit amet asdsadsad asdsadsa',
                    ),
                    CardWidgtes(
                      icon: Icons.settings_suggest_rounded,
                      title: 'Medical',
                      decription: 'Dolar sit ametda dasdasdas  sadsadsadsds ',
                    ),
                    CardWidgtes(
                      icon: Icons.settings_suggest_rounded,
                      title: 'Medical',
                      decription: 'Dolar sit ametda dasdasdas ',
                    ),
                  ]),
            ),
            // Card(
            //   borderOnForeground: true,
            //   color: Colors.grey.shade300,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(24.0),
            //   ),
            //   child: Row(
            //     children: [
            //       CardCounter(),
            //       CardCounter(),
            //       CardCounter(),
            //     ],
            //   ),
            // ),
            Visibility(
              visible: sw > 1096 ? true : false,
              child: HorizantalFoother(sw: sw),
            ),
            FootherBottom(sw: sw),
          ],
        ),
      ),
    );
  }
}

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
          child: Text(
            '30',
            style: TextStyle(color: colorWhite),
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        "Dolar Sit Amed asdasds",
        style: TextStyle(color: colorBg, fontWeight: FontWeight.w600),
      )
    ]);
  }
}

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

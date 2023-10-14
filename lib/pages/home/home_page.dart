import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:web_menu/const/color_const.dart';
import 'package:web_menu/footer/footer_bottom.dart';
import 'package:web_menu/footer/horizontal_footer.dart';
import 'package:web_menu/header/headerTop/header_top_container.dart';
import 'package:web_menu/header/nav_menu/nav_menu.dart';
import 'package:web_menu/pages/home/widgets/card_widget.dart';
import 'package:web_menu/pages/home/widgets/cart_counter_widget.dart';
import 'package:web_menu/pages/home/widgets/motto_container_widget.dart';

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
                        child: FadeInLeft(
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
              height: 100,
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
            SizedBox(
              height: 100,
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
            Carousel(
              autoScroll: true,
              // widgets
              items: [
                Image.network(
                    'https://www.medicana.com.tr/Assets/uploads/medicana-logo.png'),
                Image.network(
                    'https://www.medicana.com.tr/Assets/uploads/medicana-logo.png'),
                Image.network(
                    'https://www.medicana.com.tr/Assets/uploads/medicana-logo.png'),
              ],
            ),
            Card(
              borderOnForeground: true,
              color: Colors.grey.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardCounter(),
                  CardCounter(),
                ],
              ),
            ),
            MottoContainer(sw: sw),
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

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:web_menu/const/color_const.dart';

class MottoContainer extends StatelessWidget {
  const MottoContainer({
    super.key,
    required this.sw,
  });

  final double sw;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sw,
      height: 500,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/wp5.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(children: [
        SizedBox(height: 150),
        FadeInLeftBig(
          animate: true,
          delay: Duration(milliseconds: 3000),
          child: Center(
            child: Text(
              'Turkuaz Mikro',
              style: TextStyle(
                  color: colorWhite,
                  fontSize: 36,
                  fontFamily: '',
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        SizedBox(height: 10),
        FadeInLeftBig(
          delay: Duration(milliseconds: 3000),
          animate: true,
          child: Center(
            child: Text(
              'Sağlıklı Günler Diler',
              style: TextStyle(
                  color: colorPrimary,
                  fontSize: 72,
                  fontFamily: '',
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 45.0),
              child: Card(
                borderOnForeground: true,
                color: Colors.grey.shade300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Column(children: [
                  Icon(
                    Icons.facebook,
                    color: colorBg,
                    size: 75,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "   Medical  ",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                borderOnForeground: true,
                color: Colors.grey.shade300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Column(children: [
                  Icon(
                    Icons.tiktok,
                    color: colorBg,
                    size: 75,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "  Medical  ",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                borderOnForeground: true,
                color: Colors.grey.shade300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Column(children: [
                  Icon(
                    Icons.wechat_sharp,
                    color: colorBg,
                    size: 75,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "  Medical  ",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 45.0),
              child: Card(
                borderOnForeground: true,
                color: Colors.grey.shade300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Column(children: [
                  Icon(
                    Icons.telegram_outlined,
                    color: colorBg,
                    size: 75,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "  Medical  ",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
      ]),
    );
  }
}

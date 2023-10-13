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

              // Expanded(
              //   flex: 4,
              //   child: GalleryImage(
              //     numOfShowImages: 6,
              //     imageUrls: const [
              //       "https://cosmosmagazine.com/wp-content/uploads/2020/02/191010_nature.jpg",
              //       "https://scx2.b-cdn.net/gfx/news/hires/2019/2-nature.jpg",
              //       "https://wallpapers.com/images/featured/2ygv7ssy2k0lxlzu.jpg",
              //       "https://upload.wikimedia.org/wikipedia/commons/7/77/Big_Nature_%28155420955%29.jpeg",
              //       "https://media.cntraveller.com/photos/611bf0b8f6bd8f17556db5e4/1:1/w_2000,h_2000,c_limit/gettyimages-1146431497.jpg",
              //       "https://img.freepik.com/premium-photo/fantastic-view-kirkjufellsfoss-waterfall-near-kirkjufell-mountain-sunset_761071-868.jpg",
              //       "https://www.travelandleisure.com/thmb/KLPvXakEKLGE5AY2jVyovl3Md1k=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/iceland-BEAUTCONT1021-b1aeafa7ac2847a484cbca48d3172b6c.jpg",
              //       "https://w0.peakpx.com/wallpaper/265/481/HD-wallpaper-nature.jpg",
              //       "https://e0.pxfuel.com/wallpapers/163/906/desktop-wallpaper-beautiful-nature-with-girl-beautiful-girl-with-nature-and-moon-high-resolution-beautiful.jpg",
              //     ],
              //   ),
              // ),

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

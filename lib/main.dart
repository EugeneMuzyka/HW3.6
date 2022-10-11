// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //слайдер
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

final List<String> imgList = ['https://img.icons8.com/color/480/flutter.png'];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Demo Home Page'),
      ),
      body: Container(
        child: Column(
          children: [
            SvgPicture.asset(
              "images/icons8-flutter.svg",
              semanticsLabel:
                  'SVG From asset folder', //вариант локальной загрузки
            ),
            CarouselSlider(
              items: imgList
                  .map((item) => Container(
                        child: Center(
                          child: Image.network(
                            item,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                height: 400,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class Picture extends StatelessWidget {
//   //вариант локальной загрузки
//   const Picture({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(title: const Text('Flutter Demo Home Page')),
//           body: Center(
//             child: Stack(
//               fit: StackFit.expand,
//               children: <Widget>[
//                 SvgPicture.asset(
//                   "images/icons8-flutter.svg",
//                   semanticsLabel: 'SVG From asset folder',
//                 )
//                 // )
//               ],
//             ),
//           )),
//     );
//   }
// }

// class UrlImg extends StatelessWidget {
//   //вариант онлайн загрузки изображения
//   const UrlImg({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(title: const Text('text')),
//           body: Center(
//             child:
//                 Image.network("https://img.icons8.com/color/480/flutter.png"),
//           )),
//     );
//   }
// }

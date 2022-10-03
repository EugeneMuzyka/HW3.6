import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('text')),
          body: Center(
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                SvgPicture.asset(
                  "images/icons8-flutter.svg",
                  semanticsLabel:
                      'SVG From asset folder', //вариант локальной загрузки
                )
                // )
              ],
            ),
          )),
    );
  }
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp(Container(
//     color: Colors.white,
//     child: Image.network("https://img.icons8.com/color/480/flutter.png"),
//   ));
// }  //изображение из сети
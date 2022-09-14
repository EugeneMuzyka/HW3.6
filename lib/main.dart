import 'package:flutter/material.dart';
// ignore: unused_import

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
                Image.asset('assets/images/icons8-flutter.svg')
              ],
            ),
          )),
    );
  }
}

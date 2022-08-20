

import 'package:flutter/material.dart';
import 'package:flutter_codigo_animation/pages/home_page.dart';
import 'package:flutter_codigo_animation/pages/media_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AnimationApp",
      debugShowCheckedModeBanner: false,
      home: MediaPage(),
    );
  }
}

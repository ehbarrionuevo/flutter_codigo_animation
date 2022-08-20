

import 'package:flutter/material.dart';
import 'package:flutter_codigo_animation/utils/responsive.dart';

class MediaPage extends StatefulWidget {
  const MediaPage({Key? key}) : super(key: key);

  @override
  State<MediaPage> createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> {

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text("MediaQuery"),
      ),
      body: Column(
        children: [
          Container(
            height: ResponsiveUI.pHeight(context, 0.1),
            width: ResponsiveUI.pWidth(context, 0.9),
            color: Colors.indigo,
          ),
        ],
      ),
    );
  }
}

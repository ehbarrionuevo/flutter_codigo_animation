
import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: "batman-1",
            child: Image.asset(
              'assets/images/batman.jpg',
            ),
          ),

          Hero(
            tag: "batman-2",
            child: Image.asset(
              'assets/images/batman.jpg',
            ),
          ),
        ],
      ),
    );
  }
}

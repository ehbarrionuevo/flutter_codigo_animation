import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_codigo_animation/pages/animation_page.dart';
import 'package:flutter_codigo_animation/pages/hero_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int flagContainer = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                //Hero
                Hero(
                  tag: "batman-1",
                  child: Image.asset(
                    'assets/images/batman.jpg',
                    height: 100,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HeroPage()));
                  },
                  child: Text("Hero!"),
                ),

                const SizedBox(
                  height: 30.0,
                ),

                //AnimatedAlign
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.greenAccent,
                  child: AnimatedAlign(
                    alignment: Alignment.topLeft,
                    duration: Duration(milliseconds: 1800),
                    curve: Curves.easeInOutCubic,
                    child: Image.asset(
                      'assets/images/batman.jpg',
                      height: 50,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 30.0,
                ),

                //AnimatedContainer

                GestureDetector(
                  onTap: () {
                    flagContainer = 30 + Random().nextInt(225);
                    setState(() {});
                  },
                  child: AnimatedContainer(
                    curve: Curves.bounceOut,
                    duration: const Duration(milliseconds: 1600),
                    height: flagContainer.toDouble(),
                    width: flagContainer.toDouble(),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(
                            flagContainer, 100, flagContainer, 1)),
                  ),
                ),

                const SizedBox(
                  height: 30.0,
                ),

                //AnimatedCrossFade

                const AnimatedCrossFade(
                  firstChild: FlutterLogo(
                    size: 200,
                    style: FlutterLogoStyle.horizontal,
                  ),
                  secondChild: FlutterLogo(
                    size: 200,
                    style: FlutterLogoStyle.stacked,
                  ),
                  crossFadeState: CrossFadeState.showSecond,
                  duration: Duration(milliseconds: 1200),
                  firstCurve: Curves.bounceOut,
                  secondCurve: Curves.easeInOutCubic,
                ),

                const SizedBox(
                  height: 30.0,
                ),

                //AnimatedDefaultTextStyle
                const AnimatedDefaultTextStyle(
                  child: Text("Hola a todos de nuevo"),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  duration: Duration(milliseconds: 1600),
                  curve: Curves.bounceOut,
                ),

                const SizedBox(
                  height: 30.0,
                ),

                //AnimatedOpacity

                AnimatedOpacity(
                  opacity: 1,
                  duration: const Duration(milliseconds: 1200),
                  child: Image.asset('assets/images/batman.jpg'),
                ),

                const SizedBox(
                  height: 30.0,
                ),

                const AnimatedOpacity(
                  opacity: 1,
                  duration: const Duration(milliseconds: 1200),
                  curve: Curves.bounceOut,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  ),
                ),

                const SizedBox(
                  height: 30.0,
                ),

                //AnimatedPhysicalModel

                AnimatedPhysicalModel(
                  child: Container(
                    width: 200,
                    height: 200,
                  ),
                  shape: BoxShape.rectangle,
                  elevation: 40,
                  color: Colors.white,
                  shadowColor: Colors.indigo,
                  duration: const Duration(milliseconds: 1200),
                  borderRadius: BorderRadius.circular(20),
                ),

                const SizedBox(
                  height: 30.0,
                ),

                Container(
                  height: 300,
                  width: 300,
                  color: Colors.indigo,
                  child: Stack(
                    children: [
                      AnimatedPositioned(
                        top: 50,
                        right: 100,
                        child: Container(
                          width: 40,
                          height: 40,
                          color: Colors.greenAccent,
                        ),
                        duration: const Duration(milliseconds: 1200),
                        curve: Curves.bounceOut,
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 30.0,
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> AnimationPage()));
                  },
                  child: Text(
                    "Animation Page",
                  ),
                ),

                const SizedBox(
                  height: 100.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

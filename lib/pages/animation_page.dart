import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  
  // late AnimationController _pruebaAnimationController;
  // late Animation _pruebaAnimation;
  
  late AnimationController _turnController;
  late Animation<double> _turnAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    _turnController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1200))..repeat(reverse: true);
    _turnAnimation = CurvedAnimation(parent: _turnController, curve: Curves.bounceOut,);

    // _turnController.forward();
    
    // _pruebaAnimationController = AnimationController(
    //     vsync: this, duration: const Duration(milliseconds: 6000));
    // _pruebaAnimation = ColorTween(begin: Colors.redAccent, end: Colors.blue)
    //     .animate(_pruebaAnimationController);
    // _pruebaAnimationController.addListener(() {
    //   // print(_pruebaAnimationController.value);
    //   print(_pruebaAnimation.value);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation  Page"),
      ),
      body: Center(
        child: RotationTransition(
          turns: _turnAnimation,
          child: FlutterLogo(
            size: 200,
          ),
        ),
      ),

      // body: Center(
      //   child: AnimatedBuilder(
      //     animation: _pruebaAnimation,
      //     builder: (BuildContext context, _) {
      //       return IconButton(
      //         onPressed: () {
      //           _pruebaAnimationController.forward();
      //         },
      //         icon: Icon(
      //           Icons.ac_unit,
      //           color: _pruebaAnimation.value,
      //           size: 50,
      //         ),
      //       );
      //     },
      //   ),
      // ),
    );
  }
}
